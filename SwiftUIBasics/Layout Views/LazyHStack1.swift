//
//  LazyHStack1.swift
//  SwiftUIBasics
//
//  Created by Skander Bahri on 04/12/2020.
//

import SwiftUI

struct LazyHStack1: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(alignment: .center, spacing : 20, pinnedViews: [.sectionHeaders, .sectionFooters]) {
                ForEach(0 ..< 5) { item in
                    Section(header: sectionHeaderView(), footer : Image(systemName: "pencil.circle").font(.largeTitle) ) {
                        ForEach(0 ..< 15) { item in
                            Text("Hello, World!")
                        }
                    }
                }
            }
            .frame(height: 90)
            .background(Rectangle().fill(Color.yellow).shadow(radius: 10))
            .padding(.vertical)
        }
    }
}

struct LazyHStack1_Previews: PreviewProvider {
    static var previews: some View {
        LazyHStack1()
    }
}

struct sectionHeaderView: View {
    var body: some View {
        Text("1")
            .font(.title)
            .fontWeight(.heavy)
            .padding()
    }
}
