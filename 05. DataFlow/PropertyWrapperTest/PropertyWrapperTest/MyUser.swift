//
//  MyUser.swift
//  PropertyWrapperTest
//
//  Created by Min Ho Kim on 2022/06/30.
//

import Foundation

struct MyUser {
    var name = "Kim"
    var logCount = 0
    
    @MyUserDefault(key: "IS_LOGGED_IN") var isLoggedIn: Bool
    @MyUserDefault(key: "IS_FIRST_LOGIN") var isFirstLogin: Bool
    
    mutating func change() {
        isLoggedIn.toggle()

        logCount += 1
        
        isFirstLogin = logCount == 1 ? true : false
    }

//    var isLoggedIn: Bool = false
//    var isFirstLogin: Bool = false
}
