//
//  DisclosureGroup1.swift
//  SwiftUIBasics
//
//  Created by Skander Bahri on 21/12/2020.
//

import SwiftUI

struct DisclosureGroup1: View {
    var opacityValue : Double
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            DisclosureGroup("Title") {
                DisclosureGroup("Subtitle") {
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(height: 200)
                }
                .padding()
                .background(Color.pink.opacity(0.7))
            }
            .padding()
            .background(Color.pink.opacity(0.7))
            ScrollView {
                ForEach(0 ..< 50) { item in
                    DisclosureManager(opacityValue: opacityValue * Double(item))
                }
            }
        }
    }
}

struct DisclosureGroup1_Previews: PreviewProvider {
    static var previews: some View {
        DisclosureGroup1(opacityValue: 0.02)
    }
}

struct DisclosureManager: View {
    var opacityValue : Double
    var body: some View {
        DisclosureGroup(
            content: {
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color.yellow)
                    .shadow(color: .gray, radius: 2, x: -3, y: -3)
                    .frame(height: 200)
                    .padding()
            },
            label: {
                Image(systemName: "sun.min.fill")
                Text("Sun fill")
            }
        )
        .padding()
        .background(Color.green.opacity(opacityValue))
    }
}
