//
//  Home.swift
//  FruitMartMe
//
//  Created by Min Ho Kim on 2022/06/12.
//

import SwiftUI

struct Home: View {
    @EnvironmentObject private var store: Store
    
    var body: some View {
        NavigationView {
            List(store.products, id: \.name) { product in
                NavigationLink(destination: ProductItemDetail(product: product)) {
                    ProductItem(product: product)
                }
            }
//            .buttonStyle(.plain)
            .listStyle(.plain)
            .navigationTitle("Fruit Mart")
        }
        .navigationViewStyle(.stack)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Preview(source: Home())
            .environmentObject(Store())
    }
}
