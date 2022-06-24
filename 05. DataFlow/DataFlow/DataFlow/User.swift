//
//  User.swift
//  DataFlow
//
//  Created by Min Ho Kim on 2022/06/24.
//

import Foundation
//import SwiftUI

class User: ObservableObject {
    let name = "User Name"
    
    @Published var score = 0
    
//    let objectWillChange = ObjectWillChangePublisher()
//
//    var score = 0 {
//        willSet {
//            objectWillChange.send()
//        }
//    }
}
