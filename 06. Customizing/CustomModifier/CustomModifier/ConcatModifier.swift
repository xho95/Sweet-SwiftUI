//
//  ConcatModifier.swift
//  CustomModifier
//
//  Created by Min Ho Kim on 2022/11/06.
//

import SwiftUI

struct MyModifier1: ViewModifier {
    func body(content: Content) -> some View {
        content.font(.title)
    }
}

struct MyModifier2: ViewModifier {
    func body(content: Content) -> some View {
        content.foregroundColor(.blue)
    }
}
