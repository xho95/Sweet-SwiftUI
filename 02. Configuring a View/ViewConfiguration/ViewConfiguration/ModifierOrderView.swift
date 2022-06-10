//
//  ModifierOrderView.swift
//  ViewConfiguration
//
//  Created by Min Ho Kim on 2022/06/10.
//

import SwiftUI

struct ModifierOrderView: View {
    var body: some View {
        VStack {
            Text("SwiftUI")
                .font(.title)
                .bold()
                .padding()

            Text("SwiftUI")
                .bold()
                .padding()
//                .font(.title)

            Text("SwiftUI")
                .padding()
//                .bold()
//                .font(.title)
            
            Text("SwiftUI")
                .padding()
//                .font(.title)
//                .bold()
            
            Text("🐶🐱🐰🦊")
                .font(.largeTitle)
                .background(Color.yellow)
                .padding()

            Text("🐶🐱🐰🦊")
                .font(.largeTitle)
                .padding()
                .background(Color.yellow)
        }
    }
}

struct ModifierOrderView_Previews: PreviewProvider {
    static var previews: some View {
        ModifierOrderView()
    }
}
