//
//  PopOverView.swift
//  DataFlow
//
//  Created by Min Ho Kim on 2022/06/25.
//

import SwiftUI

struct PopOverView: View {
    @Binding var isShowingPopOver: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Button {
                    isShowingPopOver = false
                } label: {
                    Text("Cancel").foregroundColor(.red)
                }
                
                Spacer()
                
                Text("New Event").font(.headline)
                
                Spacer()
                
                Button("+") { }
            }
            
            Divider().padding(.bottom, 8)
            
            Text("Title")
            TextField("Title", text: .constant(""))
            
            Text("Contents")
            TextField("Contents", text: .constant(""))
            
            Spacer()
        }
        .padding()
    }
}

struct PopOverView_Previews: PreviewProvider {
    static var previews: some View {
        PopOverView(isShowingPopOver: .constant(true))
    }
}
