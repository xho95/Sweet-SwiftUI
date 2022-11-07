//
//  ContentView.swift
//  CustomModifier
//
//  Created by Min Ho Kim on 2022/11/06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CustomModifierView()
                .tabItem {
                    Label("modifier", systemImage: "square.inset.filled")
                }
            CustomStyleView()
                .tabItem {
                    Label("style", systemImage: "square.filled.on.square")
                }
//                AccountView()
//                    .badge("!")
//                    .tabItem {
//                        Label("Account", systemImage: "person.crop.circle.fill")
//                    }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
