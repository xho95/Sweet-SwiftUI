//
//  FrameView.swift
//  Basic
//
//  Created by Min Ho Kim on 2022/06/16.
//

import SwiftUI

struct FrameView: View {
    var body: some View {
        VStack {
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 100, height: 100)
                .border(.red)
            
            Text("Frame")
                .background(.yellow)
                .frame(width: 100, height: 100, alignment: .leading)
                .border(.red)
            
            Text("Frame")
                .background(.yellow)
                .frame(width: 100, height: 100)
                .border(.red)

            Text("Frame")
                .background(.yellow)
                .frame(width: 100, height: 100, alignment: .trailing)
                .border(.red)
            
            HStack {
                Rectangle().fill(.red).frame(minWidth: 100)
                
                Rectangle().fill(.orange).frame(maxWidth: 15)
                
                Rectangle().fill(.yellow).frame(height: 150)
                
                Rectangle().fill(.green).frame(maxHeight: .infinity)
                
                Rectangle().fill(.blue).frame(maxWidth: .infinity, maxHeight: .infinity)
                
                Rectangle().fill(.purple)
            }
            .frame(width: 300, height: 150)
        }
    }
}

struct FrameView_Previews: PreviewProvider {
    static var previews: some View {
        FrameView()
    }
}
