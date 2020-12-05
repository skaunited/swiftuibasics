//
//  LazyHGrid.swift
//  SwiftUIBasics
//
//  Created by Skander Bahri on 05/12/2020.
//

import SwiftUI

struct LazyHGrid1: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                let gridItem = GridItem(.flexible(minimum: 20, maximum: 80), spacing: 20, alignment : .center)
                LazyHGrid(rows: [gridItem],spacing: 12, pinnedViews: .sectionHeaders ) {
                    ForEach(0 ..< 5) { item in
                        Section(header: LazyHGridHeader(index: item)) {
                            ForEach(0 ..< 15) { item in
                                //Image(systemName: "\(item).circle")
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 80)
                                    .foregroundColor(.yellow)
                                    .shadow(radius: 7)
//                                    .padding(.horizontal)
                            }
                        }
                    }
                }
            }
            Rectangle()
            Rectangle()
        }
    }
}

struct LazyHGrid_Previews: PreviewProvider {
    static var previews: some View {
        LazyHGrid1()
    }
}

struct LazyHGridHeader: View {
    var index = 0
    var body: some View {
        Text("\(index)")
            .font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color.green)
            .padding(.horizontal)
    }
}
