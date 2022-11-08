//
//  QuantitySelector.swift
//  FruitMartMe
//
//  Created by Min Ho Kim on 2022/06/28.
//

import SwiftUI

struct QuantitySelector: View {
    @Binding var quantity: Int
    
    private let range = 1...20
    private let softFeedback = UIImpactFeedbackGenerator(style: .heavy)
    private let rigidFeedback = UIImpactFeedbackGenerator(style: .heavy)
    
    var body: some View {
        HStack {
            Button {
                changeQuantity(with: -1)
            } label: {
                Symbol("minus.circle.fill", scale: .large, color: Color.gray.opacity(0.5))
                    .padding()
            }
            
            Text("\(quantity)")
                .bold()
                .font(.system(.title, design: .monospaced))
                .frame(minWidth: 40, maxWidth: 60)
            
            Button {
                changeQuantity(with: +1)
            } label: {
                Symbol("plus.circle.fill", scale: .large, color: Color.gray.opacity(0.5))
                    .padding()
            }
        }
    }
    
    private func changeQuantity(with number: Int) {
        if range ~= quantity + number {
            quantity += number
            
            softFeedback.prepare()
            softFeedback.impactOccurred(intensity: 1.0)
        } else {
            rigidFeedback.prepare()
            rigidFeedback.impactOccurred()
        }
    }
}

struct QuantitySelector_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Preview(source: QuantitySelector(quantity: .constant(.random(in: 1...20))))
        }
        .padding()
        .previewLayout(.sizeThatFits)
    }
}
