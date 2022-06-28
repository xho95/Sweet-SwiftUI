//
//  FavoriteButton.swift
//  FruitMartMe
//
//  Created by Min Ho Kim on 2022/06/28.
//

import SwiftUI

struct FavoriteButton: View {
    @EnvironmentObject private var store: Store
    
    let product: Product
    
    var body: some View {
        Button {
            store.toggleFavorite(of: product)
        } label: {
            Image(systemName: imageName)
                .imageScale(.large)
                .foregroundColor(.peach)
                .frame(width: 32, height: 32)
                .onTapGesture {
                    store.toggleFavorite(of: product)
                }
        }
    }
}

extension FavoriteButton {
    private var imageName: String {
        product.isFavorite ? "heart.fill" : "heart"
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(product: productsSamples[0])
            .environmentObject(Store())
    }
}
