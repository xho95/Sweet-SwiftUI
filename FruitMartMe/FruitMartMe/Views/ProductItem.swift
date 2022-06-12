//
//  ProductItem.swift
//  FruitMartMe
//
//  Created by Min Ho Kim on 2022/06/12.
//

import SwiftUI

struct ProductItem: View {
    var body: some View {
        HStack {
            productImage
            
            productDescription
        }
        .frame(height: 150)
        .background(Color.primary.colorInvert())
        .cornerRadius(6)
        .shadow(color: .primaryShadow, radius: 1, x: 2, y: 2)
        .padding(.vertical, 8)
    }
}

private extension ProductItem {
    var productImage: some View {
        Image("apple")
            .resizable()
            .scaledToFill()
            .frame(width: 140)
            .clipped()
    }
    
    var productDescription: some View {
        VStack(alignment: .leading) {
            Text("Snow White Apple")
                .font(.headline)
                .fontWeight(.medium)
                .padding(.bottom, 6)
            
            Text("Sweet and delicious apple for Queen. Full of honey without poison!")
                .font(.footnote)
                .foregroundColor(.secondaryText)
            
            Spacer()
            
            footer
        }
        .padding([.leading, .bottom], 12)
        .padding([.top, .trailing])
    }
    
    var footer: some View {
        HStack(spacing: 0) {
            Text("$").font(.footnote) + Text("2100").font(.headline)
            
            Spacer()
            
            Image(systemName: "heart")
                .imageScale(.large)
                .foregroundColor(.peach)
                .frame(width: 32, height: 32)
            
            Image(systemName: "cart")
                .foregroundColor(.peach)
                .frame(width: 32, height: 32)
            
        }
    }
}

struct ProductItem_Previews: PreviewProvider {
    static var previews: some View {
        ProductItem()
    }
}
