//
//  Picker1.swift
//  SwiftUIBasics
//
//  Created by Skander Bahri on 24/12/2020.
//

import SwiftUI

struct Picker1: View {
    @State private var selection = "Nejia"
    var stringArray = ["Skander","Habib","Nejia","Tarek","Motez","Elodie"]
    var body: some View {
        VStack {
            Text("Picker Demo")
                .font(.title)
            Picker(selection: $selection, label: Text("Picker")) {
                ForEach(stringArray, id: \.self) { item in
                    HStack {
                        Image(systemName: "person.circle.fill")
                            .frame(width: 50)
                            .foregroundColor(.blue)
                        Text(item).tag(item)
                            .foregroundColor(.blue)
                        Spacer()
                    }
                }
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 25).fill(Color.yellow.opacity(0.5)).shadow(radius: 10))
            .padding()
        }
    }
}

struct Picker1_Previews: PreviewProvider {
    static var previews: some View {
        Picker1()
    }
}
