//
//  SubView.swift
//  DataFlow
//
//  Created by Min Ho Kim on 2022/06/24.
//

import SwiftUI

struct SubView: View {
    @EnvironmentObject var user: User
    
    var body: some View {
        Text(user.name.description)
    }
}

struct SubView_Previews: PreviewProvider {
    static var previews: some View {
        SubView()
    }
}
