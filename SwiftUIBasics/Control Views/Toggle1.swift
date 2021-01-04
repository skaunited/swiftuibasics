//
//  Toggel1.swift
//  SwiftUIBasics
//
//  Created by Skander Bahri on 04/01/2021.
//

import SwiftUI

struct Toggle1: View {
    @State private var isOn = true
    var body: some View {
        VStack {
            Text("Hello, World!")
            Toggle(isOn: $isOn) {
                Image(systemName: "heart.fill")
                    .foregroundColor(.red)
                Text("Do you like food?")
            }
            .toggleStyle(SwitchToggleStyle(tint: Color.red))
            .font(.title )
            .padding()
            
            Toggle(isOn: $isOn) {
                Image(systemName: "heart.fill")
                    .foregroundColor(.red)
                Text("Do you like food?")
            }
            .labelsHidden()
            .font(.title )
            .padding()
        }
    }
}

struct Toggel1_Previews: PreviewProvider {
    static var previews: some View {
        Toggle1()
    }
}
