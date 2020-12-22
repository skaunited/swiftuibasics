//
//  List1.swift
//  SwiftUIBasics
//
//  Created by Skander Bahri on 22/12/2020.
//

import SwiftUI

struct List1: View {
    var stringArray = ["Skander","Habib","Nejia","Tarek","Motez","Elodie"]
    var body: some View {
//        List(stringArray, id: \.self){ stringItem in
//            Text(stringItem).lineLimit(1)
//        }
//        .listStyle(InsetGroupedListStyle())
        List{
            Section(header: Text("Contact"), footer : Text("This is the contact end")){
                ForEach(stringArray, id: \.self){ stringItem in
                    HStack {
                        Image(systemName: "person")
                        Text(stringItem)
                    }
                    .padding(.vertical)
                }
            }
        }
        .listStyle(InsetGroupedListStyle())
    }
}

struct List1_Previews: PreviewProvider {
    static var previews: some View {
        List1()
    }
}
