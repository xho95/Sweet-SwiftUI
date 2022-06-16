//
//  CoordinateSpaceView.swift
//  Basic
//
//  Created by Min Ho Kim on 2022/06/16.
//

import SwiftUI

struct CoordinateSpaceView: View {
    var body: some View {
        ZStack {
            HStack {
                Rectangle()
                    .fill(.yellow)
                    .frame(width: 30)
                
                VStack {
                    Rectangle()
                        .fill(.blue)
                        .frame(height: 200)
                    
                    GeometryReader {
                        self.contents(geometry: $0)
                            .position(x: $0.size.width / 2, y: $0.size.height / 2)
                    }
                    .background(.green)
                    .border(Color.red, width: 4)
                }
                .coordinateSpace(name: "VStack")
            }
            .coordinateSpace(name: "HStack")
            
            Circle()
                .frame(width: 10, height: 10)
                .overlay(
                    Text("Geometry's Origin in local with SA")
                        .fixedSize()
                        .offset(x: +135, y: 15)
                )
                .foregroundColor(.cyan)
                .position(x: 0, y: 0)
//                .ignoresSafeArea()
            Circle()
                .frame(width: 10, height: 10)
                .overlay(
                    Text("Geometry's Origin in global without SA")
                        .fixedSize()
                        .offset(x: +155, y: -20)
                )
                .foregroundColor(.yellow)
                .position(x: 38, y: 252)
                .ignoresSafeArea()
            Circle()
                .frame(width: 10, height: 10)
                .overlay(
                    Text("Geometry's Origin from VStack with SA")
                        .fixedSize()
                        .offset(x: +155, y: -40)
                )
                .foregroundColor(.red)
                .position(x: 0, y: 208)
//                .ignoresSafeArea()
            Circle()
                .stroke(lineWidth: 2)
                .frame(width: 15, height: 15)
                .overlay(
                    Text("Geometry's Origin from HStack with SA")
                        .fixedSize()
                        .offset(x: +155, y: +15)
                )
                .foregroundColor(.indigo)
                .position(x: 38, y: 208)
//                .ignoresSafeArea()
        }
    }
    
    func contents(geometry g: GeometryProxy) -> some View {
        VStack {
            Text("Local")
                .foregroundColor(.black)
                .bold()
            Text(String.from(point: g.frame(in: .local).origin))
                .padding(.bottom)
            
            Text("Global")
                .foregroundColor(.gray)
                .bold()
            Text(String.from(point: g.frame(in: .global).origin))
                .padding(.bottom)
            
            Text("VStack")
                .foregroundColor(.red)
                .bold()
            Text(String.from(point: g.frame(in: .named("VStack")).origin))
                .padding(.bottom)
            
            Text("HStack")
                .foregroundColor(.purple)
                .bold()
            Text(String.from(point: g.frame(in: .named("HStack")).origin))
                .padding(.bottom)
        }
    }
}

extension String {
    static func from(point: CGPoint) -> String {
        String(format: "(x: %.f, y: %.f)", arguments: [point.x, point.y])
    }
}

struct CoordinateSpaceView_Previews: PreviewProvider {
    static var previews: some View {
        CoordinateSpaceView()
    }
}
