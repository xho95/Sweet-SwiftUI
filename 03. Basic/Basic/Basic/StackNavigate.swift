//
//  StackNavigate.swift
//  Basic
//
//  Created by Min Ho Kim on 2022/06/14.
//

import SwiftUI

struct StackNavigate: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: destination) {
                Image("SwiftUI")
            }
            .navigationTitle("Navigation Title")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    leadingItem
                }
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    trailingItem
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}

extension StackNavigate {
    var destination: some View {
        Text("Destination View")
            .navigationBarHidden(true)
    }
    
    var leadingItem: some View {
        Button {
            print("Leading item tapped")
        } label: {
            Image(systemName: "bell")
                .imageScale(.large)
        }
    }
    
    var trailingItem: some View {
        HStack {
            Button {
                print("another trailing item tapped")
            } label: {
                Image(systemName: "gear.badge.checkmark")
            }
            
            Button {
                print("Trailing item tapped")
            } label: {
                Image(systemName: "gear")
                    .imageScale(.large)
            }
        }
    }
}

struct StackNavigate_Previews: PreviewProvider {
    static var previews: some View {
        StackNavigate()
    }
}
