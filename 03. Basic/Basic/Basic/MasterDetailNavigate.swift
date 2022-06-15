//
//  MasterDetail.swift
//  Basic
//
//  Created by Min Ho Kim on 2022/06/15.
//

import SwiftUI

struct MasterDetailNavigate: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                NavigationLink(destination: Text("Detail View 1").font(.largeTitle)) {
                    Text("Master View Menue 1").font(.title)
                }
                NavigationLink(destination: Text("Detail View 2").font(.largeTitle)) {
                    Text("Master View Menue 2").font(.title)
                }
            }
            .navigationTitle("Navigation View Style")
            
            Text("Detail View").font(.largeTitle)
        }
        .navigationViewStyle(.columns)
    }
}

struct MasterDetailNavigate_Previews: PreviewProvider {
    static var previews: some View {
        MasterDetailNavigate()
    }
}
