//
//  CombinationView.swift
//  ViewConfiguration
//
//  Created by Min Ho Kim on 2022/06/11.
//

import SwiftUI

struct CombinationView: View {
    var body: some View {
        VStack {
            Text("Shape")
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            HStack {
                Text("Round Shape")
                    .font(.title)
                
                Spacer()
            }
            
            ZStack {
                Rectangle()
                    .frame(height: 10)
                
                HStack {
                    Circle()
                        .fill(.yellow)
                    Ellipse()
                        .fill(.green)
                    Capsule()
                        .fill(.orange)
                    RoundedRectangle(cornerRadius: 30)
                        .fill(.gray)
                }
            }
            
            HStack {
                Text("Angle Shape")
                    .font(.title)
                
                Spacer()
            }
            
            ZStack {
                Rectangle()
                    .frame(height: 10)
                
                HStack {
                    Color.red

                    Rectangle()
                        .fill(.blue)
                    RoundedRectangle(cornerRadius: 0)
                        .fill(.purple)
                }
            }
        }
        .padding()
    }
}

struct CombinationView_Previews: PreviewProvider {
    static var previews: some View {
        CombinationView()
    }
}
