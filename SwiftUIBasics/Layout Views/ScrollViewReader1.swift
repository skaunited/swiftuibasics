//
//  ScrollViewReader1.swift
//  SwiftUIBasics
//
//  Created by Skander Bahri on 06/12/2020.
//

import SwiftUI

struct ScrollViewReader1: View {
    var body: some View {
        VStack {
            ScrollViewReader {scrollViewProxy in
                Button("Scroll To Buttom"){
                    withAnimation{
                        scrollViewProxy.scrollTo(49, anchor: .center)
                    }
                }
                
                ScrollView {
                    ForEach(0 ..< 50) { item in
                        Image(systemName: "\(item).circle")
                            .font(.largeTitle)
                            .id(item)
                            .padding(.bottom)
                    }
                }
            }
        }
    }
}

struct ScrollViewReader1_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewReader1()
    }
}
