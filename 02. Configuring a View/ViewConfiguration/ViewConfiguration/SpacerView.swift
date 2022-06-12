//
//  SpacerView.swift
//  ViewConfiguration
//
//  Created by Min Ho Kim on 2022/06/11.
//

import SwiftUI

struct SpacerView: View {
    var body: some View {
//        HStack {
//            Text("Spacer MinLength")
//                .font(.title)
//                .foregroundColor(.white)
//
//            Spacer(minLength: 100)
//
//            Text("Spacer")
//                .font(.title)
//                .background(.yellow)
//
//        }
//        .background(.blue)

//        VStack {
//            Spacer()
//
//            Text("Spacer")
//                .font(.title)
//                .background(.yellow)
//
//        }
//        .background(.blue)

//        ZStack {
//            Color.clear
//
//            Text("Spacer")
//                .font(.title)
//                .background(.yellow)
//
//        }
//        .background(.blue)
        
        VStack {
            Text("Title")
                .font(.largeTitle)
            
            Text("Subtitle")
                .foregroundColor(.gray)
            
            Spacer()

            Text("Content")
            
            Spacer()
            Spacer()
            
            Text("Comment")
                .font(.body)
        }
        .font(.title)
        .frame(width: 200, height: 350)
        .padding()
        .border(.blue, width: 2)
    }
}

struct SpacerView_Previews: PreviewProvider {
    static var previews: some View {
        SpacerView()
    }
}
