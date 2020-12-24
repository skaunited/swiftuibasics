//
//  OnlineGroup1.swift
//  SwiftUIBasics
//
//  Created by Skander Bahri on 24/12/2020.
//

import SwiftUI

struct Person: Identifiable {
    var id = UUID()
    var name = ""
    var children : [Person]? = nil
}

struct OnlineGroup1: View {
    var persons = [
        Person(name: "Mark",
                          children: [Person(name: "Paola")]),
        Person(name: "Rodrigo",
                              children: [Person(name: "Kai"),
                                         Person(name: "Brennan"),
                                         Person(name: "Easton")]),
        Person(name: "Marcella",
                          children: [Person(name: "Sam"),
                                     Person(name: "Mellisa"),
                                     Person(name: "Melanie")])
    ]
    
    var body: some View {
        VStack {
            Text("Hello, World!")
            List {
                Section(header: Text("Families")) {
                    OutlineGroup(persons, children: \.children) { persons in
                        HStack {
                            Image(systemName: "person.circle.fill")
                            Text(persons.name)
                            Spacer()
                        }
                    }
                }
                .listRowBackground(Color.pink.opacity(0.5))
                .accentColor(.white)
                Section(header: Text("Managers")) {
                    OutlineGroup(persons, children: \.children) { persons in
                        HStack {
                            Image(systemName: "person.circle.fill")
                            Text(persons.name)
                            Spacer()
                        }
                    }
                }
                .listRowBackground(Color.green.opacity(0.3))
                .accentColor(.green)
            }
        }
        .padding()
    }
}

struct OnlineGroup1_Previews: PreviewProvider {
    static var previews: some View {
        OnlineGroup1()
    }
}
