//
//  SignInWithAppleButton1.swift
//  SwiftUIBasics
//
//  Created by Skander Bahri on 30/12/2020.
//

import SwiftUI
import AuthenticationServices

struct SignInWithAppleButton1: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
            SignInWithAppleButton(
                onRequest: { request in },
                onCompletion: { result in})
                .frame(width: 300.0, height: 50.0)
                .cornerRadius(10)
                .signInWithAppleButtonStyle(.white)
            
            SignInWithAppleButton(.signUp,
                onRequest: { request in },
                onCompletion: { result in})
                .frame(width: 300.0, height: 50.0)
                .signInWithAppleButtonStyle(.whiteOutline)
            
            SignInWithAppleButton(.continue,
                onRequest: { request in },
                onCompletion: { result in})
                .frame(width: 300.0, height: 50.0)
        }
    }
}

struct SignInWithAppleButton1_Previews: PreviewProvider {
    static var previews: some View {
        SignInWithAppleButton1()
    }
}
