//
//  HStack1.swift
//  SwiftUIBasics
//
//  Created by Skander Bahri on 02/12/2020.
//

import SwiftUI

struct HStack1: View {
    var body: some View {
        VStack(alignment: .center, spacing: 50.0){
            HStack (alignment: .firstTextBaseline){
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: .infinity)
               
            }
            
            HStack (alignment: .lastTextBaseline){
                
                Text("Hello, World! Hello, World!")
                    .font(.largeTitle)
                    //.frame(maxWidth: .infinity)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    //.frame(maxWidth: .infinity)
                
               
            }
            .padding()
            //.background(Color.blue)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.blue)
                    .shadow(radius: 10)
            )
            .frame(maxWidth: 400)
        }
        
        
        
    }
}

struct HStack1_Previews: PreviewProvider {
    static var previews: some View {
        HStack1()
    }
}
