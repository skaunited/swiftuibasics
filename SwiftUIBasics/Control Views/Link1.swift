//
//  Link1.swift
//  SwiftUIBasics
//
//  Created by Skander Bahri on 21/12/2020.
//

import SwiftUI

struct Link1: View {
    var myUrl : String
    var body: some View {
        VStack {
            Text("Link")
            if let url = URL(string: myUrl){
                Link(destination: url) {
                    VStack{
                        Image(systemName: "bolt.horizontal")
                        Text("Follow me on Github")
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(Capsule().shadow(radius: 10, y:10))
                }
                .accentColor(Color.pink.opacity(0.7))
                .padding()
            }
        }
        .font(.title3)
    }
}

struct Link1_Previews: PreviewProvider {
    static var previews: some View {
        Link1(myUrl: "https://github.com/skaunited")
    }
}
