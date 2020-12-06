//
//  ColorPicker1.swift
//  SwiftUIBasics
//
//  Created by Skander Bahri on 06/12/2020.
//

import SwiftUI

struct ColorPicker1: View {
    @State var selectedColor = Color.green
    var body: some View {
        VStack {
            Text("Hello, World!")
            ColorPicker("Pick a new color", selection: $selectedColor)
                .padding()
            RoundedRectangle(cornerRadius: 10)
                .fill(selectedColor)
        }
    }
}

struct ColorPicker1_Previews: PreviewProvider {
    static var previews: some View {
        ColorPicker1()
    }
}
