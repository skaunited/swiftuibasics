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
            LazyVStack(alignment: .leading){
                Section {
                    ForEach(0 ..< 50) { item in
                        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
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
