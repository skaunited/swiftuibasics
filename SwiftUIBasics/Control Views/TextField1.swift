//
//  TextFiled1.swift
//  SwiftUIBasics
//
//  Created by Skander Bahri on 04/01/2021.
//

import SwiftUI

struct TextField1: View {
    @State private var text = "Some text"
    var body: some View {
        VStack(spacing: 40.0) {
            Text("Hello, World!")
            TextField("Placeholder", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            TextField("Placeholder", text: $text)
                .padding()
                //.border(Color.gray, width: 2)
                .background(Capsule().stroke(Color.green, lineWidth: 2))
                .background(Capsule().fill(Color.green.opacity(0.4)))
                .padding()
            
            HStack {
                Image(systemName: "person.circle")
                    .font(.title)
                    .foregroundColor(.secondary)
                TextField("Placeholder", text: $text)
                    .foregroundColor(.red)
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 8).stroke(Color.green, lineWidth: 2))
            .background(RoundedRectangle(cornerRadius: 8).fill(Color("textBackground")))
            .padding()
            
        }
    }
}

struct TextFiled1_Previews: PreviewProvider {
    static var previews: some View {
        TextField1()
            .preferredColorScheme(.dark)
    }
}
