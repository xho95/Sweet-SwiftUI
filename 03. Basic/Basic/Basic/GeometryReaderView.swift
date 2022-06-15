//
//  GeometryReaderView.swift
//  Basic
//
//  Created by Min Ho Kim on 2022/06/15.
//

import SwiftUI

struct GeometryReaderView: View {
    var body: some View {
//        geometryReaderWithOneView
//        
//        geometryReaderWithMultiViews
        
        sizeAndSafeArea
    }
}

extension GeometryReaderView {
    var geometryReaderWithOneView: some View {
        GeometryReader { _ in
            Circle()
                .fill(.purple)
                .frame(width: 200, height: 200)
                .overlay(Text("Center").font(.title))
        }
        .background(.gray)
    }

    var geometryReaderWithMultiViews: some View {
        GeometryReader { _ in
            Circle()
                .fill(.blue)
                .frame(width: 350, height: 350)
            Circle()
                .fill(.orange)
                .frame(width: 280, height: 280)
            Circle()
                .fill(.purple)
                .frame(width: 200, height: 200)
            Text("TopLeading").font(.title)
        }
        .background(.gray)
    }

    var sizeAndSafeArea: some View {
        GeometryReader { geometry in
            Text("Geometry Reader")
                .font(.largeTitle).bold()
                .position(x: geometry.size.width / 2, y: geometry.safeAreaInsets.top)

            VStack {
                Text("Size").bold()
                Text("width: \(Int(geometry.size.width))")
                Text("height: \(Int(geometry.size.height))")
            }
            .position(x: geometry.size.width / 2, y: geometry.size.height / 2.5)
            
            VStack {
                Text("SafeAreaInsets").bold()
                Text("width: \(Int(geometry.safeAreaInsets.top))")
                Text("height: \(Int(geometry.safeAreaInsets.bottom))")
            }
            .position(x: geometry.size.width / 2, y: geometry.size.height / 1.4)
        }
        .font(.title)
        .frame(height: 500)
        .border(.green, width: 5)
    }
}

struct GeometryReaderView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderView()
    }
}
