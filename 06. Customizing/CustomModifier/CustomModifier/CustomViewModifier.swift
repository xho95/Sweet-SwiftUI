//
//  CustomViewModifier.swift
//  CustomModifier
//
//  Created by Min Ho Kim on 2022/11/06.
//

import SwiftUI

struct CustomViewModifier: ViewModifier {
    var borderColor: Color = .red
    
    func body(content: Content) -> some View {
        content
            .font(.title)
            .foregroundColor(Color.white)
            .padding()
            .background(Rectangle().fill(Color.gray))
            .border(borderColor, width: 2)
    }
}

extension View {
    func customModifier(borderColor: Color = .red) -> some View {
        self
            .modifier(CustomViewModifier(borderColor: borderColor))
    }
}
