//
//  Button1.swift
//  SwiftUIBasics
//
//  Created by Skander Bahri on 06/12/2020.
//

import SwiftUI

struct Button1: View {
    var body: some View {
        VStack (spacing : 40.0){
            Button("Tap Me") {
                // action code
            }
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                VStack {
                    Text("Wifi")
                    Image(systemName: "wifi")
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white)
                        .shadow(radius: 10)
                )
            })
            .accentColor(.primary)
        }
        .font(.largeTitle)
    }
}

struct Button1_Previews: PreviewProvider {
    static var previews: some View {
        Button1()
    }
}
