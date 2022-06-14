//
//  NavigationSystem.swift
//  Basic
//
//  Created by Min Ho Kim on 2022/06/14.
//

import SwiftUI

struct NavigationSystem: View {
    var body: some View {
        NavigationView {
            Image("SwiftUI")
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

extension NavigationSystem {
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

struct NavigationSystem_Previews: PreviewProvider {
    static var previews: some View {
        NavigationSystem()
    }
}
