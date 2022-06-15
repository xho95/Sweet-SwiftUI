//
//  ListView.swift
//  Basic
//
//  Created by Min Ho Kim on 2022/06/15.
//

import SwiftUI

struct User: Hashable {
    let name: String
}

struct Animal: Identifiable {
    let id = UUID()
    let name: String
}

struct ListView: View {
    let fruits = ["Apple", "Pear", "Grape", "Banana"]
    let drinks = ["Water", "Milk", "Soda"]
    
    let titles = ["Fruits", "Drinks"]
    let data = [["Apple", "Pear", "Grape", "Banana"], ["Water", "Milk", "Soda"]]

    var body: some View {
//        vStackAndList
//
//        severalItems
//
//        rangeItems
//
//        selfIDItems
//
//        hashValueIDItems
//
//        hashableProtocolItems
//
//        identifiableProtocolItems
//
//        listAndForEach
//
//        listWithForEach
//
//        combinedList
        
        sectionedList
    }
}

extension ListView {
    var vStackAndList: some View {
        HStack {
            VStack {
                Text("1")
                Text("2")
                Text("3")
                Text("4")
                Text("5")
            }
            
            List {
                Text("1")
                Text("2")
                Text("3")
                Text("4")
                Text("5")
            }
        }
    }
    
    var severalItems: some View {
        List {
            Text("List").font(.largeTitle)
            Image("SwiftUI")
            Circle().frame(width: 100, height: 100)
            Color(.red).frame(width: 100, height: 100)
        }
    }
    
    var rangeItems: some View {
        List(0..<100) {
            Text("\($0)")
        }
    }
    
    var selfIDItems: some View {
        List(["A", "B", "C", "D", "E"], id: \.self) {
            Text("\($0)")
        }
    }
    
    var hashValueIDItems: some View {
        List([1, 2, 3, 4, 5], id: \.hashValue) {
            Text("\($0)")
        }
    }
    
    var hashableProtocolItems: some View {
        List([User(name: "Steve"), User(name: "James")], id: \.name) {
            Text("\($0.name)")
        }
    }
    
    var identifiableProtocolItems: some View {
        List([Animal(name: "Cat"), Animal(name: "Dog")]) {
            Text("\($0.name)")
        }
    }
    
    var listAndForEach: some View {
        HStack {
            List {
                ForEach(0..<50) {
                    Text("\($0)")
                }
            }
            
            List(0..<50) {
                Text("\($0)")
            }
        }
    }
    
    var listWithForEach: some View {
        List {
            Text("Number")
            ForEach(0..<50) {
                Text("\($0)")
            }
        }
    }

    var combinedList: some View {
        List {
            Text("Fruits").font(.largeTitle)
            ForEach(fruits, id: \.self) {
                Text($0)
            }
            
            Text("Drinks").font(.largeTitle)
            ForEach(fruits, id: \.self) {
                Text($0)
            }
        }
    }
    
    // https://www.hackingwithswift.com/forums/swiftui/compiler-warning-non-constant-range-argument-must-be-an-integer-literal/14878
    var sectionedList: some View {
        List {
            ForEach(data.indices, id: \.self) { index in
                Section(
                    header: Text(titles[index]).font(.title),
                    footer: HStack {
                        Spacer()
                        Text("\(data[index].count)")
                    }
                ) {
                    ForEach(data[index], id: \.self) {
                        Text($0)
                    }
                }
            }
        }
        .listStyle(.insetGrouped)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
