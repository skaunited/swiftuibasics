//
//  LazyVGrid1.swift
//  SwiftUIBasics
//
//  Created by Skander Bahri on 05/12/2020.
//

import SwiftUI

struct LazyVGrid1: View {
    var body: some View {
        let gridItem = GridItem(.adaptive(minimum: 50, maximum: 200), spacing: 24)
        ScrollView {
            LazyVGrid(columns: [gridItem], alignment: .center, spacing: 24) {
                ForEach(0 ..< 50) { item in
                    Image(systemName: "\(item).circle")
                    //RoundedRectangle(cornerRadius: 20)
                        .font(.largeTitle)
                        .frame(height: 50)
                }
            }
        }
    }
}

struct LazyVGrid1_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGrid1()
    }
}
