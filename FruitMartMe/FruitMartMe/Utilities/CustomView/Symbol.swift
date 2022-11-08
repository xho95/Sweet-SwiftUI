//
//  Symbol.swift
//  FruitMartMe
//
//  Created by Min Ho Kim on 2022/11/08.
//

import SwiftUI

struct Symbol: View {
    let systemName: String
    let imageScale: Image.Scale
    let color: Color?
    
    init(_ systemName: String, scale imageScale: Image.Scale = .medium, color: Color? = nil) {
        self.systemName = systemName
        self.imageScale = imageScale
        self.color = color
    }
    
    var body: some View {
        Image(systemName: systemName)
            .imageScale(imageScale)
            .foregroundColor(color)
    }
}

struct Symbol_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Symbol("s.circle", color: .red)
            Symbol("s.circle").foregroundColor(.red)
        }
    }
}
