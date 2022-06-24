//
//  ContentView.swift
//  IdentifiableTest
//
//  Created by Min Ho Kim on 2022/06/23.
//

import SwiftUI

struct ContentView: View {
    let 🐶 = Animal(name: "Animally", age: 5)
    let 🐱 = Animal(name: "Animally", age: 5)
    
    let 🐶1 = IdentifiedAnimal(id: 1, name: "Animally", age: 5)
    let 🐶2 = IdentifiedAnimal(id: 1, name: "Animally", age: 6)
    
    let 🐶01 = IdentifiedAnimal(id: 1, name: "Doggy", age: 5)
    let 🐱01 = IdentifiedAnimal(id: 2, name: "Catty", age: 2)
    let 🦊01 = IdentifiedAnimal(id: 3, name: "Foxxy", age: 3)
    
    let 🐶02 = IdentifiedAnimal(id: 1, name: "Doggy", age: 5)
    let 🐱02 = IdentifiedAnimal(id: 1, name: "Catty", age: 2)
    let 🦊02 = IdentifiedAnimal(id: 1, name: "Foxxy", age: 3)

    var body: some View {
        VStack {
            Text(🐶 == 🐱 ? "🐶 == 🐱 is same!" : "🐶 == 🐱 is not same!")
                .padding()
            
            Text(🐶1 == 🐶2 ? "🐶1 == 🐶2 is same!" : "🐶1 == 🐶2 is not same!")
                .padding()
            
            Text(🐶1.id == 🐶2.id ? "🐶1.id == 🐶2.id is same!" : "🐶1.id == 🐶2.id is not same!")
                .padding()
            
            VStack {
                ForEach([🐶01, 🐱01, 🦊01]) { animal in
                    Text(String(describing: animal))
                }
            }
            .padding()
            
            VStack {
                ForEach([🐶02, 🐱02, 🦊02]) { animal in
                    Text(String(describing: animal))
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
