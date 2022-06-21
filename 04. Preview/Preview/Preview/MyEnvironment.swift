//
//  MyEnvironment.swift
//  Preview
//
//  Created by Min Ho Kim on 2022/06/21.
//

import Foundation
import SwiftUI

struct MyEnvironmentKey: EnvironmentKey {
    static let defaultValue: Int = 0
}

extension EnvironmentValues {
    var myEnvironment: Int {
        get {
            self[MyEnvironmentKey.self]
        }
        set {
            self[MyEnvironmentKey.self] = newValue
        }
    }
}
