//
//  SheetView.swift
//  DataFlow
//
//  Created by Min Ho Kim on 2022/06/24.
//

import SwiftUI

struct SheetView: View {
    @Binding var isShowingSheet: Bool
    
    var body: some View {
        Button {
            isShowingSheet = false
        } label: {
            Text("Tap to dismiss")
                .font(.title).foregroundColor(.red)
        }
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView(isShowingSheet: .constant(true))
    }
}
