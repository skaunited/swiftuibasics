//
//  NavigationView1.swift
//  SwiftUIBasics
//
//  Created by Skander Bahri on 22/12/2020.
//

import SwiftUI

struct NavigationView1: View {
    var body: some View {
        NavigationView {
            //NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) { /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Navigate")/*@END_MENU_TOKEN@*/ }
            ZStack {
                Color.yellow.ignoresSafeArea()
                VStack {
                    NavigationLink("Navigate" ,destination: NavView2())
                }
                .navigationTitle(Text("NavigationView "))
            }
        }
    }
}

struct NavigationView1_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView1()
    }
}

struct NavView2: View {
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            Text("View 2")
                .navigationTitle(Text("NavigationView 2"))
                .navigationBarTitleDisplayMode(.inline )
                .font(.title)
        }
    }
}
