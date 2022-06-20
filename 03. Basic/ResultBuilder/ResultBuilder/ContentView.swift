//
//  ContentView.swift
//  ResultBuilder
//
//  Created by Min Ho Kim on 2022/06/20.
//

import SwiftUI

struct ContentView: View {
    @EvenNumber var numbers: [Int] {
        1
        2
        3
        4
    }
    
    var body: some View {
        MyVStack {
            Color.blue
                .frame(width: 100, height: 20)
            Text("Hello SwiftUI")
                .font(.title)
            Rectangle()
                .frame(width: 250, height: 40)
            ForEach(0..<numbers.count) { index in
                Text("\(numbers[index])")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
