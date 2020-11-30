//
//  VStack1.swift
//  SwiftUIBasics
//
//  Created by Skander Bahri on 30/11/2020.
//

import SwiftUI

struct VStack1: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20.0){
            HStack {
                Text("Placeholder")
                Spacer()
            }
            Text("Placeholder")
            Text("Placeholder")
            Text("Placeholder")
            Text("Placeholder")
            Text("Placeholder")
            Text("Placeholder")
            Text("Placeholder")
            Text("Placeholder")
            Text("Placeholder")
            
        }
    }
}

struct VStack1_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            VStack1()
            VStack1()
        }
    }
}
