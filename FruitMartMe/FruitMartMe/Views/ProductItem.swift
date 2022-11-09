//
//  ProductItem.swift
//  FruitMartMe
//
//  Created by Min Ho Kim on 2022/06/12.
//

import SwiftUI

struct ProductItem: View {
    @EnvironmentObject var store: Store
    @Binding var quickOrder: Product?
    
    let product: Product
    
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
        ResizedImage(product.imageName)
            .frame(width: 140)
            .clipped()
    }
    
    var productDescription: some View {
        VStack(alignment: .leading) {
            Text(product.name)
                .font(.headline)
                .fontWeight(.medium)
                .padding(.bottom, 6)
            
            Text(product.description)
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
            Text("$").font(.footnote) + Text("\(product.price)").font(.headline)
            
            Spacer()
            
            FavoriteButton(product: product)
            
            Symbol("cart", color: .peach)
                .frame(width: 32, height: 32)
                .onTapGesture {
                    self.orderProduct()
                }
            
        }
    }
    
    func orderProduct() {
        quickOrder = product
        store.placeOrder(product: product, quantity: 1)
        
    }
}

struct ProductItem_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ForEach(productsSamples) {
                ProductItem(quickOrder: .constant(nil), product: $0)
            }
            
            ProductItem(quickOrder: .constant(nil), product: productsSamples[0])
                .preferredColorScheme(.dark)
        }
        .padding()
        .previewLayout(.sizeThatFits)
    }
}
