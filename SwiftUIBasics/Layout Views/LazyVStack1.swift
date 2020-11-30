//
//  LazyVStack.swift
//  SwiftUIBasics
//
//  Created by Skander Bahri on 30/11/2020.
//

import SwiftUI

struct LazyVStack1: View {
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading,spacing : 40, pinnedViews: [.sectionHeaders, .sectionFooters]){
                ForEach(0 ..< 5) { item in
                    Section(header: HeaderView(sectionNumber: item), footer: FooterView(footerNumber: item)) {
                        ForEach(0 ..< 50) { item in
                            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                        }
                    }
                }
            }
        }
       
    }
}

struct LazyVStack_Previews: PreviewProvider {
    static var previews: some View {
        LazyVStack1()
    }
}

struct HeaderView: View {
    var sectionNumber = 0
    var body: some View {
        Text("Header \(sectionNumber)")
            .font(.largeTitle)
            .padding()
    }
}

struct FooterView: View {
    var footerNumber = 0
    var body: some View {
        Text("Footer \(footerNumber)")
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.gray.opacity(0.5))
    }
}
