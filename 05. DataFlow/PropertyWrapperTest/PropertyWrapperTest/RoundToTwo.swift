//
//  RoundToTwo.swift
//  PropertyWrapperTest
//
//  Created by Min Ho Kim on 2022/06/30.
//

import Foundation

@propertyWrapper
struct RoundToTwo {
    private var value = 0.0
    private var multiplier = 100.0
    
    var wrappedValue: Double {
        get { value }
        set { value = (newValue * multiplier).rounded() / multiplier }
    }
}

@propertyWrapper
struct RoundTo<Value> where Value: FloatingPoint {
    private var value: Value = 0
    
    private let precison: Int

    private var multiplier: Value {
        (0..<precison).reduce(1) { sum, _ in sum * 10 }
    }
    
    var wrappedValue: Value {
        get { value }
        set { value = (newValue * multiplier).rounded() / multiplier }
    }
    
    var projectedValue: Self {
        get { self }
        set { self = newValue }
    }

    init(wrappedValue: Value, _ precison: Int) {
        assert(precison >= 0)
        
        self.precison = precison
        self.wrappedValue = wrappedValue
    }
}
