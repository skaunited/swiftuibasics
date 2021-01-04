//
//  Text1.swift
//  SwiftUIBasics
//
//  Created by Skander Bahri on 04/01/2021.
//

import SwiftUI

struct Text1: View {
    @ScaledMetric private var fontSize : CGFloat = 36
    var body: some View {
        VStack {
            Text("Fixed size - 36")
                .font(Font.system(size: 36))
            
            Text("ScaledMetric - \(fontSize)")
                .font(Font.system(size: fontSize))
            
            Text("Placeholder")
                .font(.largeTitle)
            
            Text("Rounded")
                .font(Font.system(.largeTitle, design: .rounded))
                .fontWeight(.bold)
            
            Text("Monospaced")
                .font(Font.system(.largeTitle, design: .monospaced))
                .fontWeight(.bold)
            
            Text("Serif")
                .font(Font.system(.largeTitle, design: .serif))
                .fontWeight(.bold)
            
            Text("Align this text Align this text Align this text Align this text Align this text ")
                .multilineTextAlignment(.center)
                
            Text("Align this to the leading side")
                .fontWeight(.black)
                .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .bottomTrailing)
                
        }
    }
}

struct Text1_Previews: PreviewProvider {
    static var previews: some View {
        Text1()
    }
}
