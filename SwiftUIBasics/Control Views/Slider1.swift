//
//  Slider1.swift
//  SwiftUIBasics
//
//  Created by Skander Bahri on 01/01/2021.
//

import SwiftUI

struct Slider1: View {
    @State private var value = 50.0
    var body: some View {
        VStack(spacing: 40.0) {
            Text("\(value)")
            Slider(value: $value, in: 0...100, step: 25)
                .accentColor(.green)
                .padding()
                .background(Capsule().fill(Color.pink))
            Slider(
                value: $value,
                in: 0...100,
                minimumValueLabel: Image(systemName: "wifi"),
                maximumValueLabel: Image(systemName: "wifi")) {
                Text("Slider View")
            }
            .font(.title)
        }
        .padding()
    }
}

struct Slider1_Previews: PreviewProvider {
    static var previews: some View {
        Slider1()
    }
}
