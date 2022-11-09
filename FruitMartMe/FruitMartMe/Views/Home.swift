//
//  Home.swift
//  FruitMartMe
//
//  Created by Min Ho Kim on 2022/06/12.
//

import SwiftUI

struct Home: View {
    @EnvironmentObject private var store: Store

    @State private var quickOrder: Product?
    
    var body: some View {
        NavigationView {
            List(store.products, id: \.name) { product in
                NavigationLink(destination: ProductItemDetail(product: product)) {
                    ProductItem(quickOrder: $quickOrder, product: product)
                }
            }
//            .buttonStyle(.plain)
            .listStyle(.plain)
            .navigationTitle("Fruit Mart")
        }
        .popupOverContext(item: $quickOrder, style: .dimmed, content: popupMessage(product:))
        .navigationViewStyle(.stack)
    }
}

extension Home {
    func popupMessage(product: Product) -> some View {
        let name = product.name.split(separator: " ").last!
        
        return VStack {
            Text(name)
                .font(.title).bold().kerning(3)
                .foregroundColor(.peach)
                .padding()
            
            OrderCompletedMessage()
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Preview(source: Home())
            .environmentObject(Store())
    }
}
