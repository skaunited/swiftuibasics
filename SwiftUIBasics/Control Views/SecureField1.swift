//
//  SecureFiled1.swift
//  SwiftUIBasics
//
//  Created by Skander Bahri on 30/12/2020.
//

import SwiftUI

struct SecureField1: View {
    @State private var password = ""
    var body: some View {
        VStack {
            Text("Hello Secure Field")
            SecureField("password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            SecureField("password", text: $password)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.green, lineWidth: 2))
                .padding()
        }
        
    }
}

struct SecureFiled1_Previews: PreviewProvider {
    static var previews: some View {
        SecureField1()
    }
}
