//
//  View+grayBackground.swift
//  DataFlow
//
//  Created by Min Ho Kim on 2022/06/25.
//

import SwiftUI

extension View {
    // Is there any better way to make a function like this?
    func grayBackground() -> some View {
        self
            .padding()
            .background(.gray.opacity(0.2))
            .cornerRadius(10)
            .padding(.horizontal)
    }
}
