//
//  ContentView.swift
//  ResultBuilder
//
//  Created by Min Ho Kim on 2022/06/20.
//

import SwiftUI

struct ContentView: View {
    @EvenNumber
    var naturals: [Int] {
//        1; 2; 3; 4; 5; 6
        1
        2
        3
        4
    }
    
    @EvenNumber
    var anotherNaturals: [Int] {
        [1, 2, 3, 4, 5, 6]
    }
    
    @EvenNumber
    func evenFunction(_ numbers: Int...) -> [Int] {
        numbers.filter { $0 > 2 }
    }

    var callEvenFunction: [Int] {
        evenFunction(1, 2, 3, 4, 5, 6)
    }
    
    func anotherEvens(@EvenNumber _ content: () -> [Int]) -> [Int] {
        content()
    }
    
    var callAnotherEvens: [Int] {
        anotherEvens {
            1; 2; 3; 4; 5; 6
        }
    }
    
    let myEvens = MyEvenNumber {
        1; 2; 3; 4; 5; 6; 7; 8; 9; 10
    }

    var body: some View {
        MyVStack {
            Color.blue
                .frame(width: 100, height: 20)
            Text("Hello SwiftUI")
                .font(.title)
            Rectangle()
                .frame(width: 250, height: 40)

            HStack {
                ForEach(naturals.indices, id: \.self) { index in
                    Text("\(naturals[index])")
                }
            }
            .padding()
            .background(.yellow)

            HStack {
                ForEach(anotherNaturals.indices, id: \.self) { index in
                    Text("\(anotherNaturals[index])")
                }
            }
            .padding()
            .background(.green)

            HStack {
                ForEach(callEvenFunction.indices, id: \.self) { index in
                    Text("\(callEvenFunction[index])")
                }
            }
            .padding()
            .background(.cyan)

            HStack {
                ForEach(callAnotherEvens.indices, id: \.self) { index in
                    Text("\(callAnotherEvens[index])")
                }
            }
            .padding()
            .background(.pink)

            HStack {
                ForEach(myEvens.numbers.indices, id: \.self) { index in
                    Text("\(myEvens.numbers[index])")
                }
            }
            .padding()
            .background(.orange)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
