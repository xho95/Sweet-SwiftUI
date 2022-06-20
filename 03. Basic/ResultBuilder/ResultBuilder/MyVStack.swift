//
//  MyVStack.swift
//  ResultBuilder
//
//  Created by Min Ho Kim on 2022/06/20.
//

import SwiftUI

struct MyVStack<Content>: View where Content: View {
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            content
        }
    }
}

struct MyVStack_Previews: PreviewProvider {
    static var previews: some View {
        MyVStack {
            Text("Hi")
        }
    }
}
