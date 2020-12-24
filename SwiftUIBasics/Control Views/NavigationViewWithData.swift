//
//  NavigationViewWithData.swift
//  SwiftUIBasics
//
//  Created by Skander Bahri on 24/12/2020.
//

import SwiftUI

struct NavigationViewWithData: View {
    var stringArray = ["Real Madrid","Liverpool F.C","Tottenham Hotspur","Manchester United","Juventus"]
    
    var body: some View {
        NavigationView {
            List(0 ..< 5) { item in
                NavigationLink(
                    destination: NavigationViewWithData2(stringData: stringArray[item]),
                    label: {
                        Text(stringArray[item])
                    })
                
            }
            .navigationTitle(Text("NavigationView"))
        }
    }
}

struct NavigationViewWithData_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewWithData()
    }
}

struct NavigationViewWithData2: View {
    var stringData : String
    var body: some View {
        ZStack {
            getColor(teamName: stringData).ignoresSafeArea()
            VStack {
                Text(stringData)
                Image(stringData)
                    .resizable()
                    .frame(width: 250.0, height: 250.0, alignment: .center)
            }
            .navigationTitle(Text("NavigationViewWithData 2"))
            .navigationBarTitleDisplayMode(.inline )
            .font(.title)
        }
    }
}

func getColor(teamName : String) -> Color {
    switch teamName {
    case "Juventus":
        return .white
    case "Real Madrid":
        return .white
    case "Manchester United":
        return .red
    case "Liverpool F.C":
        return .red
    default:
        return .blue
    }
}
