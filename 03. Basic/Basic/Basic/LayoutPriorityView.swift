//
//  LayoutPriorityView.swift
//  Basic
//
//  Created by Min Ho Kim on 2022/06/16.
//

import SwiftUI

struct LayoutPriorityView: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Color.red
                Color.green
                Color.blue
            }
            .frame(height: 40)
            
            HStack {
                Color.red.layoutPriority(1)
                Color.green
                Color.blue.layoutPriority(1)
            }
            .frame(height: 40)
            
            HStack {
                Color.red.layoutPriority(1)
                Color.green.frame(minWidth: 30)
                Color.blue.frame(maxWidth: 50).layoutPriority(1)
            }
            .frame(height: 40)
            
            HStack {
                Color.red.frame(width: 50)
                Color.green.layoutPriority(1)
                Color.blue.frame(maxWidth: 50).layoutPriority(1)
            }
            .frame(height: 40)
        }
    }
}

struct LayoutPriorityView_Previews: PreviewProvider {
    static var previews: some View {
        LayoutPriorityView()
    }
}
