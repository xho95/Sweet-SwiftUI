//
//  OrientationView.swift
//  ScrollView
//
//  Created by Min Ho Kim on 2022/11/09.
//

import SwiftUI

struct OrientationView: View {
    @State private var isVertical = false
    
    var body: some View {
        ScrollView(isVertical ? .vertical : .horizontal) {
            Text(isVertical ? "Vertical" : "Horizontal")
            Text("Scroll View")
                .font(.largeTitle)
                .bold()
        }
        .background(Color.green)
        .onTapGesture {
            isVertical.toggle()
        }
    }
}

struct OrientationView_Previews: PreviewProvider {
    static var previews: some View {
        OrientationView()
    }
}
