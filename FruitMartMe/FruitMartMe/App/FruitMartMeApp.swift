//
//  FruitMartMeApp.swift
//  FruitMartMe
//
//  Created by Min Ho Kim on 2022/06/12.
//

import SwiftUI

@main
struct FruitMartMeApp: App {
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [
            .foregroundColor: UIColor(named: "peach")!
        ]
        
        UINavigationBar.appearance().titleTextAttributes = [
            .foregroundColor: UIColor(named: "peach")!
        ]
    }

    var body: some Scene {
        WindowGroup {
            Home()
                .accentColor(Color.primary)
                .environmentObject(Store())
        }
    }
}
