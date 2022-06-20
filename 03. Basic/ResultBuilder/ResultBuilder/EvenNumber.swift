//
//  EvenNumber.swift
//  ResultBuilder
//
//  Created by Min Ho Kim on 2022/06/20.
//

import Foundation

@resultBuilder
struct EvenNumber {
    static func buildBlock(_ numbers: Int...) -> [Int] {
        numbers.filter { $0.isMultiple(of: 2) }
    }
    static func buildBlock(_ numbers: [Int]) -> [Int] {
        numbers.filter { $0.isMultiple(of: 2) }
    }
}
