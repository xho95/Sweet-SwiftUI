//
//  CustomModifierView.swift
//  CustomModifier
//
//  Created by Min Ho Kim on 2022/11/07.
//

import SwiftUI

struct CustomModifierView: View {
    var body: some View {
        VStack {
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

struct ModifierView_Previews: PreviewProvider {
    static var previews: some View {
        CustomModifierView()
    }
}
