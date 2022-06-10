//
//  SFSymbolView.swift
//  ViewConfiguration
//
//  Created by Min Ho Kim on 2022/06/10.
//

import SwiftUI

struct SFSymbolView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "star.circle")
                
                Image(systemName: "star.circle.fill")
            }
            .padding()

            HStack {
                Image(systemName: "book.fill")
                    .imageScale(.small)
                    .foregroundColor(.red)
                
                Image(systemName: "book.fill")
                    .imageScale(.medium)
                    .foregroundColor(.green)
                
                Image(systemName: "book.fill")
                    .imageScale(.large)
                    .foregroundColor(.blue)
            }
            .padding()

            HStack {
                Image(systemName: "speaker.3")
                    .font(.body)
                
                Image(systemName: "speaker.3")
                    .font(.title)

                Image(systemName: "speaker.3")
                    .font(.system(size: 40))

                Image(systemName: "speaker.3")
                    .imageScale(.large)
                    .font(.system(size: 40))
            }
            .padding()

            HStack {
                Image(systemName: "arrow.up")
                    .font(Font.title.weight(.black))
                
                Image(systemName: "arrow.left")
                    .font(Font.title.weight(.semibold))

                Image(systemName: "arrow.down")
                    .font(Font.title.weight(.light))

                Image(systemName: "arrow.right")
                    .font(Font.title.weight(.ultraLight))
            }
            .padding()
        }
    }
}

struct SFSymbolView_Previews: PreviewProvider {
    static var previews: some View {
        SFSymbolView()
    }
}
