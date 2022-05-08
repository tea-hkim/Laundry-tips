//
//  CountDown.swift
//  Laundry-tips
//
//  Created by 김태호 on 2022/05/06.
//

import SwiftUI

struct CountDown: View {
    @State var selectedHours: Int
    @State var selectedMins: Int
    var body: some View {
        CountDownPicker(selectedHours: $selectedHours, selectedMins: $selectedMins)
    }
}

struct CountDown_Previews: PreviewProvider {
    static var previews: some View {
        CountDown()
    }
}

struct CountDownPicker: View {
    
    var hours = Array(0...23)
    var min = Array(0...59)
    
    @Binding var selectedHours: Int
    @Binding var selectedMins: Int
    
    var body: some View {
        GeometryReader { geometry in
            HStack {
                Picker(selection: $selectedHours, label: Text("hrs")) {
                    ForEach(0..<self.hours.count) {
                        Text("\(self.hours[$0]) hrs")
                            .bold()
                    }
                }
                .frame(maxWidth: geometry.size.width / 2)
                .clipped()
                .pickerStyle(.wheel)
                
                Picker(selection: self.$selectedMins, label: Text("mins")) {
                    ForEach(0..<self.min.count) {
                        Text("\(self.min[$0]) mins")
                            .bold()
                    }
                }
                .frame(maxWidth: geometry.size.width / 2)
                .clipped()
                .pickerStyle(.wheel)
            }
        }
        .offset(y: -100)
        .padding()
        .frame(width: .infinity, height: 140, alignment: .center)
        
    }
}
