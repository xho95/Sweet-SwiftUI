//
//  ProductItemDetail.swift
//  FruitMartMe
//
//  Created by Min Ho Kim on 2022/06/17.
//

import SwiftUI

struct ProductItemDetail: View {
    @EnvironmentObject private var store: Store

    @State private var quantity = 1
    @State private var isShowingAlert = false

    let product: Product
    
    var body: some View {
        VStack(spacing: 0) {
            productImage

            orderInfo
        }
        .ignoresSafeArea(edges: .top)
        .alert(isPresented: $isShowingAlert) {
            confirmAlert
        }
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
                
                FavoriteButton(product: product)
            }
            
            Text(product.description)
//            Text(split(text: product.description))
                .foregroundColor(.secondaryText)
//                .fixedSize()
        }
    }
    
    var priceInfo: some View {
        let price = quantity * product.price
        
        return HStack {
            (Text("W") + Text("\(price)").font(.title))
                .fontWeight(.medium)
            
            Spacer()
            
            QuantitySelector(quantity: $quantity)
        }
        .foregroundColor(.black)
    }
    
    var orderButton: some View {
        Button {
            isShowingAlert = true
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
    
    var confirmAlert: Alert {
        Alert(
            title: Text("Confirm Order"),
            message: Text("Would you like to purchase \(quantity) \(product.name)" + "\(quantity == 1 ? "?" : "s?")"),
            primaryButton: .default(Text("OK"), action: {
                placeOrder()
            }),
            secondaryButton: .cancel(Text("Cancel"))
        )
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
    
    func placeOrder() {
        store.placeOrder(product: product, quantity: quantity)
    }
}

struct ProductItemDetail_Previews: PreviewProvider {
    static let source1 = ProductItemDetail(product: productsSamples[0])
    static let source2 = ProductItemDetail(product: productsSamples[1])
    
    static var previews: some View {
        Group {
            Preview(source: source1)
            Preview(source: source2, devices: [.iPhone13Pro], isDarkMode: false)
        }
    }
}
