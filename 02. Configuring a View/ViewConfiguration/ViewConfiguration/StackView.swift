//
//  LayoutView.swift
//  ViewConfiguration
//
//  Created by Min Ho Kim on 2022/06/11.
//

import SwiftUI

struct StackView: View {
    var body: some View {
        VStack {
            HStack {
                Text("HStack")
                    .font(.title)
                    .foregroundColor(.blue)
                Text("aligns View horizontally")
                Text("!")
            }
            .padding()
            .border(.black)
            .font(.largeTitle)

            HStack(alignment: .top) {
                Rectangle()
                    .fill(.green)
                    .frame(width: 100, height: 100)
                
                Rectangle()
                    .fill(.yellow)
                    .frame(width: 100, height: 200)
            }
            
            VStack(alignment: .trailing) {
                Rectangle()
                    .fill(.green)
                    .frame(width: 100, height: 100)
                
                Rectangle()
                    .fill(.yellow)
                    .frame(width: 200, height: 100)
            }
            
            ZStack {
                Rectangle()
                    .fill(.green)
                    .frame(width: 100, height: 100)
                
                Rectangle()
                    .fill(.yellow)
                    .frame(width: 100, height: 100)
                    .offset(x: 10, y: 10)
            }
        }
    }
}

struct LayoutView_Previews: PreviewProvider {
    static var previews: some View {
        StackView()
    }
}
