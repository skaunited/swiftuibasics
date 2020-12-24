//
//  ProgressView.swift
//  SwiftUIBasics
//
//  Created by Skander Bahri on 24/12/2020.
//

import SwiftUI

struct ProgressView1: View {
    @State private var downloading = true
    var body: some View {
        VStack(spacing: 40.0) {
            VStack {
                Text("Hello, World!")
                if downloading {
                    ProgressView()
                        .frame(width: 70, height: 70, alignment: .center)
                        .scaleEffect(2)
                        .progressViewStyle(CircularProgressViewStyle(tint: Color.pink))
                }
                Button("Stop downloading") {
                    downloading.toggle()
                }
            }
            Text("Progress 50%")
            ProgressView("Progress 50%",value: 0.5)
                .accentColor(.purple)
                .padding()
            ProgressView(value: 0.5) {
                Text("Progress 50%")
            } currentValueLabel: {
                Text("5 files of 10")
            }
            .padding()

        }
        .font(.title)
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView1()
    }
}
