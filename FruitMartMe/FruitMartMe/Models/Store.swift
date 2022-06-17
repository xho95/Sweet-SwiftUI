//
//  Store.swift
//  FruitMartMe
//
//  Created by Min Ho Kim on 2022/06/17.
//

import Foundation

final class Store {
    var products: [Product]
    
    init(file: String = "ProductData.json") {
        self.products = Bundle.main.decode([Product].self, with: file)
    }
}
