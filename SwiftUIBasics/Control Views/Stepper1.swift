//
//  Stepper1.swift
//  SwiftUIBasics
//
//  Created by Skander Bahri on 04/01/2021.
//

import SwiftUI

struct Stepper1: View {
    @State private var stepperValue = 18
    var body: some View {
        VStack {
            Text("Stepper Value: \(stepperValue)")
                .font(.title)
            Stepper(value: $stepperValue, in: 7...30) {
                Text("Age \(stepperValue)")
                    .font(.title)
            }
            .padding()
            
            Stepper("Age", value: $stepperValue)
                .labelsHidden()
                .background(Color.yellow)
                .cornerRadius(8)
        }
    }
}

struct Stepper1_Previews: PreviewProvider {
    static var previews: some View {
        Stepper1()
    }
}
