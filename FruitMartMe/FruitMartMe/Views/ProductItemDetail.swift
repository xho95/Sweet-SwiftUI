//
//  ProductItemDetail.swift
//  FruitMartMe
//
//  Created by Min Ho Kim on 2022/06/17.
//

import SwiftUI

struct ProductItemDetail: View {
    let product: Product
    
    var body: some View {
        VStack(spacing: 0) {
            productImage

            orderInfo
        }
        .ignoresSafeArea(edges: .top)
    }
}

extension ProductItemDetail {
    var productImage: some View {
        GeometryReader { _ in
            Image(product.imageName)
                .resizable()
                .scaledToFill()
        }
    }
    
    var orderInfo: some View {
        GeometryReader {
            VStack(alignment: .leading) {
                productDescription
//                    .frame(width: $0.size.width)
                
                Spacer()
                
                priceInfo
                
                orderButton
            }
            .frame(height: $0.size.height)
//            .frame(height: $0.size.height + 10)
            .padding(32)
            .background(.white)
            .cornerRadius(16)
            .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: -5)
        }
    }

    var productDescription: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Text(product.name)
                    .font(.largeTitle).fontWeight(.medium)
                    .foregroundColor(.black)
                
                Spacer()
                
                Image(systemName: "heart")
                    .imageScale(.large)
                    .foregroundColor(.peach)
                    .frame(width: 32, height: 32)
            }
            
            Text(product.description)
//            Text(split(text: product.description))
                .foregroundColor(.secondaryText)
//                .fixedSize()
        }
    }
    
    var priceInfo: some View {
        Group {
            (Text("W") + Text("\(product.price)").font(.title))
                .fontWeight(.medium)
            
//            Spacer()
        }
        .foregroundColor(.black)
    }
    
    var orderButton: some View {
        Button {
            //
        } label: {
            Capsule()
                .fill(Color.peach)
                .frame(maxWidth: .infinity, minHeight: 30, maxHeight: 55)
                .overlay(
                    Text("Order").font(.system(size: 20)).fontWeight(.medium).foregroundColor(.white)
                )
                .padding(.vertical, 8)
        }
        .padding(.bottom, 20)
    }
    
    func split(text: String) -> String {
        guard !text.isEmpty else { return text }
        
        let centerIndex = text.index(text.startIndex, offsetBy: text.count / 2)
        let centerSpaceIndex = text[..<centerIndex].lastIndex(of: " ") ?? text[centerIndex...].firstIndex(of: " ") ?? text.index(before: text.endIndex)
        let afterSpaceIndex = text.index(after: centerSpaceIndex)
        let leftString = text[..<afterSpaceIndex].trimmingCharacters(in: .whitespaces)
        let rightString = text[afterSpaceIndex...].trimmingCharacters(in: .whitespaces)
        
        return String(leftString + "\n" + rightString)
    }
}

struct ProductItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemDetail(product: productsSamples[0])
    }
}
