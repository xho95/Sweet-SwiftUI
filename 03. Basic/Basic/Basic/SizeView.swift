//
//  SizeView.swift
//  Basic
//
//  Created by Min Ho Kim on 2022/06/16.
//

import SwiftUI

struct SizeView: View {
    var body: some View {
//        fixedSizeView
        
        fiexedSizeText
    }
}

extension SizeView {
    var fixedSizeView: some View {
        VStack {
            VStack {
                Text("Frame Modifier").font(.title).bold()
                    .frame(width: 80, height: 30)
                Rectangle()
                Color.red
                Image("SwiftUI")
                    .resizable()
            }
            
            VStack {
                Text("Frame Modifier").font(.title).bold()
                    .fixedSize()
                    .frame(width: 80, height: 30)
                VStack {
                    Text("Hi")
                }
                .fixedSize()
                Rectangle()
//                    .frame(idealWidth: 100)
                    .fixedSize()
                Color.red
                    .fixedSize()
                Image("SwiftUI")
                    .resizable()
                    .fixedSize()
            }
        }
    }
    
    var fiexedSizeText: some View {
        VStack(spacing: 100) {
            Group {
                Text("You can apply FixedSize to avoid omitting text.")
                
                Text("You can apply FixedSize to avoid omitting text.").font(.title)
                    .fixedSize(horizontal: true, vertical: true)
                
                Text("You can apply FixedSize to avoid omitting text.").font(.title)
                    .fixedSize(horizontal: false, vertical: true)
            }
            .font(.title)
            .frame(width: 150, height: 40)
        }
    }
}

struct SizeView_Previews: PreviewProvider {
    static var previews: some View {
        SizeView()
    }
}
