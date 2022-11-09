//
//  ScrollPageView.swift
//  ScrollView
//
//  Created by Min Ho Kim on 2022/11/09.
//

import SwiftUI

struct ScrollPageView: View {
    let colors: [Color] = [.red, .green, .blue]
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView(.horizontal) {
                HStack(spacing: 0) {
                    ForEach(colors.indices, id: \.self) { index in
                        Circle()
                            .fill(colors[index])
                            .overlay(Text("\(index) page").font(.largeTitle).foregroundColor(.white))
                    }
                    .frame(width: geometry.size.width, height: geometry.size.height)
                }
            }
            .onAppear {
                UIScrollView.appearance().isPagingEnabled = true 
            }
        }
    }
}

struct ScrollPageView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollPageView()
    }
}
