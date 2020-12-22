//
//  Menu1.swift
//  SwiftUIBasics
//
//  Created by Skander Bahri on 22/12/2020.
//

import SwiftUI

struct Menu1: View {
    var userString : String
    var stringArray = ["Skander","Habib","Nejia","Tarek","Motez","Elodie"]
    var stringArray2 = ["User 1","User 2","User 3","User 4","User 5"]
    var body: some View {
        VStack {
            Text(verbatim: userString)
            Menu("Select User") {
                ForEach(stringArray, id: \.self) { item in
                    Button(action: {self.selectUser(user: item)}, label: {
                        Image(systemName: "flame")
                        Text(item)
                    })
                }
                Menu("More...") {
                    ForEach(stringArray2, id: \.self) { item in
                        Button(action: {self.selectUser(user: item)}, label: {
                            Image(systemName: "flame")
                            Text(item)
                        })
                    }
                }
            }
            .accentColor(.white)
            .padding()
            .background(Capsule().fill(Color.green))
            Spacer()
        }.font(.title)
    }
    
    func selectUser(user : String){
        print("hello \(user)")
    }
}

struct Menu1_Previews: PreviewProvider {
    static var previews: some View {
        Menu1(userString: "Hello")
    }
}
