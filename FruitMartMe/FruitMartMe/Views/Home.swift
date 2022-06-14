//
//  Home.swift
//  FruitMartMe
//
//  Created by Min Ho Kim on 2022/06/12.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack {
            ProductItem(product: productsSamples[0])
            ProductItem(product: productsSamples[1])
            ProductItem(product: productsSamples[2])

            if Int.random(in: 0...1) == 0 {
                Rectangle()
            } else {
                Circle()
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}