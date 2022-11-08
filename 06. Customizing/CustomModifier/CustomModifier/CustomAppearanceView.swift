//
//  CustomAppearanceView.swift
//  CustomModifier
//
//  Created by Min Ho Kim on 2022/11/08.
//

import SwiftUI

struct CustomAppearanceView: View {
    @State private var isOn = true
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [
            .foregroundColor: UIColor.systemTeal,   // the color of a Text
            .kern: 5                                // the space between characters
        ]
        
        UINavigationBar.appearance().titleTextAttributes = [
            .foregroundColor: UIColor.systemTeal,
            .font: UIFont.italicSystemFont(ofSize: 25)
        ]
        
//        UISwitch.appearance().tintColor = .orange
//        UISwitch.appearance().thumbTintColor = .red
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                
                Toggle(isOn: $isOn) {
                    Text("UISwitch's Color")
                }
                .tint(.orange)
            }
            .navigationTitle("UIAppearance")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct CustomAppearanceView_Previews: PreviewProvider {
    static var previews: some View {
        CustomAppearanceView()
    }
}
