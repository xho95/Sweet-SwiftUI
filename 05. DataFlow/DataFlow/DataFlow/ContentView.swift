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

    var body: some View {
        VStack {
            VStack {
                Toggle(isOn: $isFavorite) {
                    Text("isFavorite: \(isFavorite.description)")
                }
                
                Stepper("Count: \(count)", value: $count)
            }
            .padding()
            .background(.gray.opacity(0.2))
            .cornerRadius(10)
            .padding(.horizontal)
            
            VStack(spacing: 30) {
                Text(user.name)
                
                Button {
                    user.score += 1
                } label: {
                    Text(user.score.description)
                }
            }
            .padding()
            .background(.gray.opacity(0.2))
            .cornerRadius(10)
            .padding(.horizontal)

            SuperView()
                .environmentObject(User())
                .padding()
                .background(.gray.opacity(0.2))
                .cornerRadius(10)
                .padding(.horizontal)

            Button {
                isShowingAlert = true
            } label: {
                Text("Alert")
            }
            .padding()
            .background(.gray.opacity(0.2))
            .cornerRadius(10)
            .padding(.horizontal)

            Button {
                isShowingDialog = true
            } label: {
                Text("Dialog")
            }
            .padding()
            .background(.gray.opacity(0.2))
            .cornerRadius(10)
            .padding(.horizontal)

            Button {
                isShowingSheet = true
            } label: {
                Text("Sheet").font(.title).foregroundColor(.blue)
            }
            .padding()
            .background(.gray.opacity(0.2))
            .cornerRadius(10)
            .padding(.horizontal)
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
            print("Dismissed")
        } content: {
            SheetView(isShowingSheet: $isShowingSheet)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(user: User())
    }
}
