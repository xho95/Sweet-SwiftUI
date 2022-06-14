//
//  ContentView.swift
//  Basic
//
//  Created by Min Ho Kim on 2022/06/14.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        VStack {
            HStack(spacing: 20) {
                Button("Button") {
                    print("Button1")
                }
                
                Button(action: { print("Button2") }) {
                    Text("Button")
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).strokeBorder())
                }
                
                Button(action: { print("Button3") }) {
                    Circle()
                        .stroke(lineWidth: 2)
                        .frame(width: 80, height: 80)
                        .overlay(Text("Button"))
                }
                .accentColor(.green)
            }
            
            HStack(spacing: 20) {
                Button(action: { print("Button1") }) {
                    Image("SwiftUI")
                        .resizable()
                        .frame(width: 120, height: 120)
                }
                .buttonStyle(.plain)
                
                Button(action: { print("Button2") }) {
                    Image(systemName: "play.circle")
                        .imageScale(.large)
                        .font(.largeTitle)
                }
            }
            .padding()
            
            HStack {
                Image(systemName: "person.circle")
                    .imageScale(.large)
                    .onTapGesture {
                        print("onTapGesture")
                    }
                
                Button(action: { print("button") }) {
                    Image(systemName: "person.circle")
                        .imageScale(.large)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
