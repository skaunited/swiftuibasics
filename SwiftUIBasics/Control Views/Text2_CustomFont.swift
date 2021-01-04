//
//  Text2_CustomFont.swift
//  SwiftUIBasics
//
//  Created by Skander Bahri on 04/01/2021.
//

import SwiftUI

struct Text2_CustomFont: View {
    var body: some View {
        Text("Skander BAHRI, How are you ?")
            .font(.custom("Redressed", size: 30.0))
    }
}

struct Text2_CustomFont_Previews: PreviewProvider {
    static var previews: some View {
        Text2_CustomFont()
    }
}
