//
//  ScrollView1.swift
//  SwiftUIBasics
//
//  Created by Skander Bahri on 30/12/2020.
//

import SwiftUI

struct ScrollView1: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.blue.opacity(0.7)).shadow(radius: 10)
                    .frame(width: 100, height: 100)
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.blue.opacity(0.7)).shadow(radius: 10)
                    .frame(width: 100, height: 100)
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.blue.opacity(0.7)).shadow(radius: 10)
                    .frame(width: 100, height: 100)
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.blue.opacity(0.7)).shadow(radius: 10)
                    .frame(width: 100, height: 100)
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.blue.opacity(0.7)).shadow(radius: 10)
                    .frame(width: 100, height: 100)
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.blue.opacity(0.7)).shadow(radius: 10)
                    .frame(width: 100, height: 100)
            }
            .padding()
        }
            
    }
}

struct ScrollView1_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView1()
    }
}
