//
//  JoystickStackView.swift
//  ViewConfiguration
//
//  Created by Min Ho Kim on 2022/06/11.
//

import SwiftUI

struct JoystickStackView: View {
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Image(systemName: "arrow.down").font(.title).padding()
            }
            
            HStack {
                Spacer()
                Image(systemName: "arrow.right").font(.title).padding()
            }
            
            Circle()
                .fill(.yellow.opacity(0.8))
                .frame(width: 250, height: 250)
            
            Text("Joystick").font(.largeTitle)
            
            ZStack(alignment: .topTrailing) {
                Color.clear
                Image(systemName: "arrow.up.right.circle.fill").font(.title)
            }
            
            VStack {
                Image(systemName: "arrow.up").font(.title).padding()
                Spacer()
            }
            
            HStack {
                Image(systemName: "arrow.left").font(.title).padding()
                Spacer()
            }
        }
        .frame(width: 250, height: 250)
    }
}

struct JoystickStackView_Previews: PreviewProvider {
    static var previews: some View {
        JoystickStackView()
    }
}
