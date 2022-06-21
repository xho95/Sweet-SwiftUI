//
//  MyEnvironmentView.swift
//  Preview
//
//  Created by Min Ho Kim on 2022/06/21.
//

import SwiftUI

struct MyEnvironmentView: View {
    @Environment(\.myEnvironment) var myValue
    
    var body: some View {
        Text("\(myValue)")
    }
}

struct MyEnvironmentView_Previews: PreviewProvider {
    static var previews: some View {
        MyEnvironmentView()
    }
}
