//
//  TabViewPaging1.swift
//  SwiftUIBasics
//
//  Created by Skander Bahri on 04/01/2021.
//

import SwiftUI

struct TabViewPaging1: View {
    var body: some View {
        TabView {
            Content1()
            Content2()
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        .ignoresSafeArea()
    }
}

struct TabViewPaging1_Previews: PreviewProvider {
    static var previews: some View {
        TabViewPaging1()
    }
}

struct Content1: View {
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            Image(systemName: "flame").font(.largeTitle)
        }
    }
}

struct Content2: View {
    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea()
            Image(systemName: "moon").font(.largeTitle)
        }
    }
}
