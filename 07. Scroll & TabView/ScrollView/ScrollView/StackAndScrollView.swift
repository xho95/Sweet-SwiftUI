//
//  StackAndScrollView.swift
//  ScrollView
//
//  Created by Min Ho Kim on 2022/11/09.
//

import SwiftUI

struct StackAndScrollView: View {
    @State private var isVertical = true

    var body: some View {
        Group {
            if isVertical {
                HStack {
                    VStack {
                        Color.red
                        Color.green
                        Color.blue
                    }
                    
                    ScrollView {
                        Color.red
                        Color.green.frame(idealHeight: 30)
                        Color.blue.frame(idealHeight: 200)
                    }
                }
            } else {
                VStack {
                    HStack {
                        Color.red
                        Color.green
                        Color.blue
                    }

                    ScrollView(.horizontal) {
                        HStack {
                            Color.red
                            Color.green.frame(idealHeight: 30)
                            Color.blue.frame(idealHeight: 200)
                        }
                    }
                }
            }
        }
        .onTapGesture {
            isVertical.toggle()
        }
    }
}

struct StackAndScrollView_Previews: PreviewProvider {
    static var previews: some View {
        StackAndScrollView()
    }
}
