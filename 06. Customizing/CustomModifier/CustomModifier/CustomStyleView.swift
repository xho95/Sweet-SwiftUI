//
//  CustomStyleView.swift
//  CustomModifier
//
//  Created by Min Ho Kim on 2022/11/07.
//

import SwiftUI

struct CustomStyleView: View {
    @State private var isOn = true
    
    var body: some View {
        VStack {
            VStack {
                Button("Custom Button Style 1") {
                    
                }
                .buttonStyle(CustomButtonStyle(backgroundColor: .green))

                Button("Custom Button Style 2") {
                    
                }
                .buttonStyle(CustomButtonStyle(cornerRadius: 20))

                Button {
                    
                } label: {
                    Text("Custom Button Style 3")
                    
                }
                .buttonStyle(CustomButtonStyle(backgroundColor: .orange, cornerRadius: 20))
            }
            
            Divider()
            
            VStack {
                Button("Custom Button Style 1") {
                    
                }
                .buttonStyle(CustomPrimitiveButtonStyle())

                Button("Custom Button Style 1") {
                    
                }
                .buttonStyle(CustomPrimitiveButtonStyle(minimumDuration: 1))
            }
            
            Divider()
            
            VStack {
                Toggle("Basic Toggle", isOn: $isOn)
                
                Toggle("Custom Toggle", isOn: $isOn)
                    .toggleStyle(CustomToggleStyle())
            }
        }
    }
}

struct CustomStyleView_Previews: PreviewProvider {
    static var previews: some View {
        CustomStyleView()
    }
}
