//
//  TextEditor.swift
//  SwiftUIBasics
//
//  Created by Skander Bahri on 04/01/2021.
//

import SwiftUI

struct TextEditor1: View {
    @State private var text = "Enter a text..."
    var body: some View {
        VStack {
            Text("Hello, World!")
            
            Button("Dissmiss Keyboard"){
                hideKeyboard()
            }
            
            TextEditor(text: $text)
                .font(.title)
                .foregroundColor(Color.green)
                .border(Color.gray, width: 2)
                .background(Color.gray)
                .padding()
        }
        .padding()
    }
}

struct TextEditor_Previews: PreviewProvider {
    static var previews: some View {
        TextEditor1()
    }
}
