//
//  CustomToggleStyle.swift
//  CustomModifier
//
//  Created by Min Ho Kim on 2022/11/07.
//

import SwiftUI

struct CustomToggleStyle: ToggleStyle {
    let size: CGFloat = 30
    
    func makeBody(configuration: Configuration) -> some View {
        let isOn = configuration.isOn
        
        return HStack {
            configuration.label
            
            Spacer()
            
            ZStack(alignment: isOn ? .top : .bottom) {
                Capsule()
                    .fill(isOn ? Color.green : Color.red)
                    .frame(width: size, height: size * 2)

                Capsule()
                    .frame(width: size - 2, height: size - 2)
                    .onTapGesture {
                        withAnimation {
                            configuration.isOn.toggle()
                        }
                    }
            }
        }
    }
}
