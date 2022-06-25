//
//  ContentView.swift
//  DataFlow
//
//  Created by Min Ho Kim on 2022/06/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var user: User
    
    @State var framework = "UIKit"
    
    @State private var isFavorite = true
    @State private var count = 0
    
    @State private var isShowingAlert = false
    @State private var isShowingDialog = false
    @State private var isShowingSheet = false
    @State private var isShowingPopOver = false

    var body: some View {
        VStack {
            VStack {
                Toggle(isOn: $isFavorite) {
                    Text("isFavorite: \(isFavorite.description)")
                }
                
                Stepper("Count: \(count)", value: $count)
            }
            .grayBackground()
            
            VStack(spacing: 30) {
                Text(user.name)
                
                Button {
                    user.score += 1
                } label: {
                    Text(user.score.description)
                }
            }
            .grayBackground()

            SuperView()
                .environmentObject(User())
                .grayBackground()

            Button {
                isShowingAlert = true
            } label: {
                Text("Alert")
            }
            .grayBackground()

            Button {
                isShowingDialog = true
            } label: {
                Text("Dialog")
            }
            .grayBackground()

            Button {
                isShowingSheet = true
            } label: {
                Text("Sheet").font(.title).foregroundColor(.blue)
            }
            .grayBackground()

            Button {
                isShowingPopOver = true
            } label: {
                Text("Pop Over").font(.largeTitle)
            }
            .grayBackground()
            .popover(isPresented: $isShowingPopOver) {
                PopOverView(isShowingPopOver: $isShowingPopOver)
            }
        }
        .alert(isPresented: $isShowingAlert) {
            Alert(title: Text("Title"),
                  message: Text("contents"),
                  primaryButton: .default(Text("Confirm"), action: { print("Confirmed") }),
                  secondaryButton: .cancel(Text("Cancel")))
        }
        .confirmationDialog(Text("Dialog"), isPresented: $isShowingDialog) {
            ForEach(1..<20) { index in
                Button { } label: { Text("Button \(index)") }
            }
        }
        .sheet(isPresented: $isShowingSheet) {
            SheetView(isShowingSheet: $isShowingSheet)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(user: User())
    }
}
