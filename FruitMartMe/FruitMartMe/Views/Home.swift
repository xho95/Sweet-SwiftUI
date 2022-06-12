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
            ProductItem()
            ProductItem()
            ProductItem()
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
