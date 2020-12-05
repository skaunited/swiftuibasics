//
//  Spacer1.swift
//  SwiftUIBasics
//
//  Created by Skander Bahri on 05/12/2020.
//

import SwiftUI

struct GeometryReader1: View {
    var body: some View {
        
        List(0 ..< 50) { item in
            GeometryReader { gp in
                Text("Y: \(Int(gp.frame(in: .global).minY))")
                    .foregroundColor(Int(gp.frame(in: .global).minY) < 300 ? .green : .red)
            }
        }
        
        
        
//        GeometryReader { gp in
//            VStack {
//                Text("Width: \(gp.size.width)")
//                Text("Height: \(gp.size.height)")
//                Rectangle()
//                    .frame(width: gp.size.width/2, height:gp.size.height/2)
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//        }
//        .ignoresSafeArea()
    }
}

struct Spacer1_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader1()
    }
}
