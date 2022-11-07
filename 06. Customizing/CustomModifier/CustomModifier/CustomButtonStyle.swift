//
//  CustomButtonStyle.swift
//  CustomModifier
//
//  Created by Min Ho Kim on 2022/11/07.
//

import SwiftUI

struct CustomButtonStyle: ButtonStyle {
    var backgroundColor: Color = .blue
    var cornerRadius: CGFloat = 6
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.white)
            .padding()
            .background(RoundedRectangle(cornerRadius: cornerRadius).fill(backgroundColor))
            .scaleEffect(configuration.isPressed ? 0.7 : 1.0)
    }
}

struct CustomPrimitiveButtonStyle: PrimitiveButtonStyle {
    var minimumDuration = 0.5
    
    func makeBody(configuration: Configuration) -> some View {
        ButtonStyleBody(configuration: configuration, minimumDuration: minimumDuration)
    }
    
    private struct ButtonStyleBody: View {
        let configuration: Configuration
        let minimumDuration: Double
        
        @GestureState private var isPressed = false
        
        var body: some View {
            let longPress = LongPressGesture(minimumDuration: minimumDuration)
                .updating($isPressed) { value, state, _ in
                    state = value
                }
                .onEnded { _ in
                    self.configuration.trigger()
                }
            
            return configuration.label
                .foregroundColor(.white)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.green))
                .scaleEffect(isPressed ? 0.8 : 1.0)
                .opacity(isPressed ? 0.6 : 1.0)
                .gesture(longPress)
        }
    }
}
