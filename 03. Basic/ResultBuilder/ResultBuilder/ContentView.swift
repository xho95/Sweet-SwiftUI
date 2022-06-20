//
//  ContentView.swift
//  ResultBuilder
//
//  Created by Min Ho Kim on 2022/06/20.
//

import SwiftUI

struct ContentView: View {
    @EvenNumber var naturals: [Int] {
        1; 2; 3; 4; 5; 6
    }
    
    @EvenNumber var anotherNaturals: [Int] {
        [1, 2, 3, 4, 5, 6]
    }
    
    var body: some View {
        MyVStack {
            Color.blue
                .frame(width: 100, height: 20)
            Text("Hello SwiftUI")
                .font(.title)
            Rectangle()
                .frame(width: 250, height: 40)
            HStack {
                ForEach(naturals.indices, id: \.self) { index in
                    Text("\(naturals[index])")
                }
            }
            HStack {
                ForEach(anotherNaturals.indices, id: \.self) { index in
                    Text("\(anotherNaturals[index])")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
