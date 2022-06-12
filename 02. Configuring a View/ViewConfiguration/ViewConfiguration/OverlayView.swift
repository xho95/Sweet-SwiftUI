//
//  OverlayView.swift
//  ViewConfiguration
//
//  Created by Min Ho Kim on 2022/06/11.
//

import SwiftUI

struct OverlayView: View {
    var body: some View {
        VStack {
            Rectangle()
                .fill(.green)
                .frame(width: 150, height: 150)
                .overlay(
                    Rectangle()
                        .fill(.yellow)
                        .offset(x: 10, y: 10)
                )
                .padding()

            Rectangle()
                .fill(.yellow)
                .frame(width: 150, height: 150)
                .background(
                    Rectangle()
                        .fill(.green)
                        .offset(x: 10, y: 10)
                )
                .padding()
            
            Circle()
                .fill(.yellow.opacity(0.8))
                .frame(width: 250, height: 250)
                .overlay(Text("Joystick").font(.largeTitle))
                .overlay(
                    Image(systemName: "arrow.up").font(.title).padding(),
                    alignment: .top
                )
                .overlay(
                    Image(systemName: "arrow.left").font(.title).padding(),
                    alignment: .leading
                )
                .overlay(
                    Image(systemName: "arrow.up.right.circle.fill").font(.title),
                    alignment: .topTrailing
                )
                .background(
                    Image(systemName: "arrow.down").font(.title).padding(),
                    alignment: .bottom
                )
                .background(
                    Image(systemName: "arrow.right").font(.title).padding(),
                    alignment: .trailing
                )
        }
    }
}

struct OverlayView_Previews: PreviewProvider {
    static var previews: some View {
        OverlayView()
    }
}
