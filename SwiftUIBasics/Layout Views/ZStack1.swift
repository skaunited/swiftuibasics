//
//  ZStack1.swift
//  SwiftUIBasics
//
//  Created by Skander Bahri on 05/12/2020.
//

import SwiftUI

struct ZStack1: View {
    var body: some View {
        ZStack (alignment: .bottomTrailing){
            //Back
            Color.pink
                .ignoresSafeArea()
            
            //Content
            Text("Hello, World!")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .foregroundColor(.white)
            
            //Floating Button
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
               Image(systemName: "goforward.plus")
                .font(.system(size: 60))
            })
            .padding()
        }
    }
}

struct ZStack1_Previews: PreviewProvider {
    static var previews: some View {
        ZStack1()
    }
}
