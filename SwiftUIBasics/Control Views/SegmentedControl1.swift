//
//  SegmentedControl1.swift
//  SwiftUIBasics
//
//  Created by Skander Bahri on 30/12/2020.
//

import SwiftUI

struct SegmentedControl1: View {
    @State private var segmendindex = 1
    var body: some View {
        VStack {
            Text("Hello, World!")
            Picker(selection: $segmendindex, label: Text("Picker")) {
                Image(systemName: "wifi").tag(3)
                Text("1").tag(1)
                Text("2").tag(2)
            }
            .pickerStyle(SegmentedPickerStyle())
            .background(Color.blue)
            .cornerRadius(8)
            .padding()
        }
        
    }
}

struct SegmentedControl1_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControl1()
            .preferredColorScheme(.dark)
    }
}
