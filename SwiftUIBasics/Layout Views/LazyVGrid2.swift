//
//  LazyVGrid2.swift
//  SwiftUIBasics
//
//  Created by Skander Bahri on 05/12/2020.
//

import SwiftUI

struct LazyVGrid2: View {
    var body: some View {
        let rowHeight = 70
        let gridItem = GridItem(.adaptive(minimum: CGFloat(rowHeight), maximum: 80), spacing: 0)
        ScrollView {
            LazyVGrid(columns: [gridItem], alignment: .center, spacing: 0) {
                ForEach(0 ..< 50) { item in
                    //Image(systemName: "\(item).circle")
                    RoundedRectangle(cornerRadius: 0)
                        .frame(height: CGFloat(rowHeight))
                        .foregroundColor(item % 2 == 0 ? .black : .white)
                }
            }
            
        }
        .background(Color.blue)
    }
}

struct LazyVGrid2_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGrid2()
    }
}
