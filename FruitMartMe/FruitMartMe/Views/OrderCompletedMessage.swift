//
//  OrderCompletedMessage.swift
//  FruitMartMe
//
//  Created by Min Ho Kim on 2022/11/09.
//

import SwiftUI

struct OrderCompletedMessage: View {
    var body: some View {
        Text("Order Completed!")
            .font(.system(size: 24))
            .bold()
            .kerning(2)
    }
}

struct OrderCompletedMessage_Previews: PreviewProvider {
    static var previews: some View {
        OrderCompletedMessage()
    }
}
