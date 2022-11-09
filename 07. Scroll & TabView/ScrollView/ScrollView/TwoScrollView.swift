//
//  TwoScrollView.swift
//  ScrollView
//
//  Created by Min Ho Kim on 2022/11/09.
//

import SwiftUI

struct TwoScrollView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("Vertical ScrollView").font(.largeTitle)
                
                ScrollView {
                    ForEach(0..<10) { i in
                        Circle()
                            .fill(Color(white: 0.2 + (0.8 * Double(i) / 10)))
                            .frame(width: 80, height: 80)
                    }
                    .frame(width: geometry.size.width / 2)
                }
                .frame(height: geometry.size.height / 2)
                .padding(.bottom)
                
                Text("Horizontal ScrollView").font(.largeTitle)
                
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(0..<10) { i in
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.yellow)
                                .frame(width: 100, height: 100)
                                .scaleEffect(1 - (0.7 * CGFloat(i) / 10))
                        }
                    }
                    .frame(height: geometry.size.height / 5)
                    .padding(.horizontal)
                }
            }
        }
    }
}

struct TwoScrollView_Previews: PreviewProvider {
    static var previews: some View {
        TwoScrollView()
    }
}
