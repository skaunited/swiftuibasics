//
//  TabView1.swift
//  SwiftUIBasics
//
//  Created by Skander Bahri on 04/01/2021.
//

import SwiftUI

struct TabView1: View {
    @State private var selectedTab = 2
    var body: some View {
        TabView(selection: $selectedTab) {
            PageView1()
                .tabItem {
                    Text("Tab Label 1")
                    Image(systemName: "flame")
                }
                .tag(1)
            PageView2()
                .tabItem {
                    Text("Tab Label 2")
                    Image(systemName: "moon")
                }
                .tag(2)
        }
        .accentColor(.red)
    }
}

struct TabView1_Previews: PreviewProvider {
    static var previews: some View {
        TabView1()
    }
}

struct PageView1: View {
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            Text("Tab Content 1")
        }
    }
}

struct PageView2: View {
    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea()
            Text("Tab Content 2")
        }
    }
}
