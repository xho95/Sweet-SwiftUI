//
//  MyEvenNumber.swift
//  ResultBuilder
//
//  Created by Min Ho Kim on 2022/06/21.
//

import Foundation

struct MyEvenNumber<T> {
    let numbers: T
    
    @inlinable init(@EvenNumber content: () -> T) {
        self.numbers = content()
    }
}
