//
//  Store.swift
//  FruitMartMe
//
//  Created by Min Ho Kim on 2022/06/17.
//

import Foundation

final class Store: ObservableObject {
    @Published var products: [Product]
    
    init(file: String = "ProductData.json") {
        self.products = Bundle.main.decode([Product].self, with: file)
    }
}

extension Store {
    func toggleFavorite(of product: Product) {
        if let index = products.firstIndex(of: product) {
            products[index].isFavorite.toggle()
        }
//        guard let index = products.firstIndex(of: product) else {
//            return
//        }
//
//        products[index].isFavorite.toggle()
    }
}
