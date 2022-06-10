//
//  ImageView.swift
//  ViewConfiguration
//
//  Created by Min Ho Kim on 2022/06/10.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Image("SwiftUI")
                    
                    Image("SwiftUI")
                        .resizable()
                        .frame(width: 50, height: 50)
                    
                    Image("SwiftUI")
                        .resizable()
                        .frame(width: 150, height: 150)
                }
                
                Divider()
                    .background(Color.black)
                
                HStack {
                    Image("SwiftUI")
                        .resizable(capInsets: .init(top: 0, leading: 50, bottom: 0, trailing: 0))
                        .frame(width: 150, height: 150)
                    
                    Image("SwiftUI")
                        .resizable(resizingMode: .tile)
                        .frame(width: 150, height: 150)
                }
                
                Divider()
                    .background(Color.black)
                
                HStack {
                    Image("SwiftUI")
                        .resizable()
                        .frame(width: 100, height: 150)
                    
                    Image("SwiftUI")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 150)
                    
                    Image("SwiftUI")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 150)
                        .clipped()
                }
                
                Divider()
                    .background(Color.black)
                
                HStack {
                    Image("SwiftUI")
                        .resizable()
                        .aspectRatio(CGSize(width: 1.6, height: 1), contentMode: .fit)
                        .frame(width: 150, height: 150)
                    
                    Image("SwiftUI")
                        .resizable()
                        .aspectRatio(0.7, contentMode: .fill)
                        .frame(width: 150, height: 150)
                        .clipped()
                }
                
                Divider()
                    .background(Color.black)
                
                HStack {
                    Image("SwiftUI")
                        .clipShape(Circle())
                    
                    Image("SwiftUI")
                        .clipShape(Rectangle().inset(by: 10))
                    
                    Image("SwiftUI")
                        .clipShape(
                            Ellipse().path(in: CGRect(x: 10, y: 10, width: 80, height: 110))
                        )
                }
                
                HStack {
                    Image("SwiftUI")
                    
                    Image("SwiftUI")
                        .renderingMode(.original)
                    
                    Image("SwiftUI")
                        .renderingMode(.template)
                }
                .foregroundColor(.red)
            }
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
