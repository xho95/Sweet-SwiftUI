//
//  Order.swift
//  FruitMartMe
//
//  Created by Min Ho Kim on 2022/06/30.
//

import Foundation

struct Order: Identifiable {
    static var orderSequence = sequence(first: 1) { $0 + 1 }
    
    let id: Int
    let product: Product
    let quantity: Int
    
    var price: Int {
        product.price * quantity
    }
}
