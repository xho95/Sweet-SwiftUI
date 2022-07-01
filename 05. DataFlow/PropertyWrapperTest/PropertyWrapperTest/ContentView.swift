//
//  ContentView.swift
//  PropertyWrapperTest
//
//  Created by Min Ho Kim on 2022/06/30.
//

import SwiftUI

struct ContentView: View {
//    var isLoggedIn: Bool {
//        get { UserDefaults.standard.bool(forKey: "IS_LOGGED_IN") }
//        set { UserDefaults.standard.set(newValue, forKey: "IS_LOGGED_IN") }
//    }
//
//    var isFirstLogin: Bool {
//        get { UserDefaults.standard.bool(forKey: "IS_FIRST_LOGIN") }
//        set { UserDefaults.standard.set(newValue, forKey: "IS_FIRST_LOGIN") }
//    }
    
    @State var user = MyUser(name: "John")
    @State var number = MyNumber()
    @State var mathConstants = MathConstants()
    @State var pi = RoundTo(wrappedValue: 3.141592, 2)

    var body: some View {
        VStack {
            VStack {
                Text("Log Count: \(user.logCount)")
                    .padding()

                Toggle(isOn: $user.isLoggedIn) {
                    Text("Log On")
                }
                
                Toggle(isOn: $user.isFirstLogin) {
                    Text("First Log")
                }
                
                Button {
                    user.change()
                } label: {
                    Text(user.isLoggedIn ? "Log Out" : "Log In")
                }
            }
            .frame(maxWidth: .infinity)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke()
            )
            
            Divider()
            
            VStack {
                Text(String(format: "%.2f", number.roundedNumber))
            }
            .frame(maxWidth: .infinity)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke()
            )

            Divider()
            
            VStack {
                Text(String(format: "π: %.3f", mathConstants.pi))
                Text(String(format: "e: %.3f", mathConstants.e))
            }
            .frame(maxWidth: .infinity)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke()
            )

            Divider()
            
            VStack {
                Text(String(format: "π: %.2f", pi.wrappedValue))
            }
            .frame(maxWidth: .infinity)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke()
            )
        }
        .padding()
        .onAppear {
            number.roundedNumber = 1.2345
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
