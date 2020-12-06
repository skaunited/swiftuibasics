//
//  DatePicker1.swift
//  SwiftUIBasics
//
//  Created by Skander Bahri on 06/12/2020.
//

import SwiftUI

struct DatePicker1: View {
    @State private var date = Date()
    var body: some View {
        VStack {
            Text("Selected Date : \(date)")
            DatePicker(selection: $date, label: { Text("Pick a date") })
                .datePickerStyle(GraphicalDatePickerStyle())
                //.datePickerStyle(WheelDatePickerStyle())
                .labelsHidden()
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.green.opacity(0.5)))
                .padding(40)
        }
    }
}

struct DatePicker1_Previews: PreviewProvider {
    static var previews: some View {
        DatePicker1()
    }
}
