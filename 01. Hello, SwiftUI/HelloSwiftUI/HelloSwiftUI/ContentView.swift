//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Min Ho Kim on 2022/06/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Text("Hello SwiftUI")
            
            Text("Hello SwiftUI")
                .font(.largeTitle)
                .foregroundColor(.red)
                .fontWeight(.bold)

            Text("Hello ")
                .foregroundColor(.green)
                .italic() +
            Text("SwiftUI")
                .foregroundColor(.blue)
                .bold()
            
            Text("Hello ✋\nSwiftUI 😀")
                .font(.title)
            
            Text("Hello ✋\nSwiftUI 😀")
                .font(.title)
                .lineLimit(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
