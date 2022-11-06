//
//  MyUserDefault.swift
//  PropertyWrapperTest
//
//  Created by Min Ho Kim on 2022/06/30.
//

import Foundation

@propertyWrapper
struct MyUserDefault<Value> {
    let key: String
    
    var wrappedValue: Value {
        get { UserDefaults.standard.object(forKey: key) as! Value }     // Not completed!
        set { UserDefaults.standard.set(newValue, forKey: key) }
    }
}
