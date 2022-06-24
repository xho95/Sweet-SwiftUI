//
//  Animal.swift
//  IdentifiableTest
//
//  Created by Min Ho Kim on 2022/06/23.
//

import Foundation

struct Animal {
    let name: String
    let age: Int 
}

extension Animal: Equatable {
    
}

struct IdentifiedAnimal {
    let id: Int
    let name: String
    let age: Int
}

extension IdentifiedAnimal: Equatable {
    
}

extension IdentifiedAnimal: Identifiable {
    
}

