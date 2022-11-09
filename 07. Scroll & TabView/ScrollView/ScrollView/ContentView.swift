//
//  ContentView.swift
//  ScrollView
//
//  Created by Min Ho Kim on 2022/11/09.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            OrientationView()
                .tabItem { Label("scroll", systemImage: "arrow.up.arrow.down") }
                .tag(1)

            TwoScrollView()
                .tabItem { Label("two", systemImage: "arrow.up.and.down.and.arrow.left.and.right") }
                .tag(2)

            StackAndScrollView()
                .tabItem { Label("stack", systemImage: "arrow.up.arrow.down.square") }
                .tag(3)

            ScrollOffsetView()
                .tabItem { Label("offset", systemImage: "arrow.up.arrow.down.square") }
                .tag(4)
            
            ScrollPageView()
                .tabItem { Label("page", systemImage: "arrow.down.to.line") }
                .tag(5)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
