//
//  ContentView.swift
//  CustomModifier
//
//  Created by Min Ho Kim on 2022/11/06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            
            Text("Custom ViewModifier")
                .modifier(CustomViewModifier(borderColor: .blue))
            
            ModifiedContent(content: Text("Another ViewModifier"),
                            modifier: CustomViewModifier(borderColor: .blue))
            
            Text("Concatenated Modifiers")
                .modifier(MyModifier1().concat(MyModifier2()))

            Text("Custom ViewModifier")
                .customModifier(borderColor: .orange)
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
