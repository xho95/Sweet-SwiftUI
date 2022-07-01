//
//  MyNumber.swift
//  PropertyWrapperTest
//
//  Created by Min Ho Kim on 2022/06/30.
//

import Foundation

struct MyNumber {
    @RoundToTwo var roundedNumber: Double
}

struct MathConstants {
    @RoundTo(3) var pi = 3.141592
    @RoundTo(wrappedValue: 2.718281, 3) var e: Double
}
