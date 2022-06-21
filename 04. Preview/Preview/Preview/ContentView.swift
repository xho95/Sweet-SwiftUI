//
//  ContentView.swift
//  Preview
//
//  Created by Min Ho Kim on 2022/06/21.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.layoutDirection) var layoutDirection
    
    let myText: String = "Hello"
    
    var body: some View {
        VStack {
            MyEnvironmentView()
                .environment(\.myEnvironment, 10)
                .padding()
            
            Text(layoutDirection == .leftToRight ? "Left to Right" : "Right to Left")
            
            Text("Hello SwiftUI")
                .frame(width: 100)
                .environment(\.font, .title)
                .environment(\.lineLimit, 1)
                .environment(\.minimumScaleFactor, 0.5)
                .padding()
            Text("Continuing Update")
                .foregroundColor(.red)
                .padding()
            Text("\(myText)")
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13")
            .environment(\.locale, .init(identifier: "ko_KR"))
            .environment(\.colorScheme, .light)

//        ContentView()
//            .previewDevice("iPhone 13")
//            .environment(\.locale, .init(identifier: "en_US"))
//            .environment(\.layoutDirection, .rightToLeft)
//            .environment(\.colorScheme, .dark)
    }
}
