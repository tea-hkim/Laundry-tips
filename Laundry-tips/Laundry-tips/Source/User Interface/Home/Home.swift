//
//  Home.swift
//  Laundry-tips
//
//  Created by 김태호 on 2022/04/29.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView {
            VStack{
                HStack{
                    NavigationLink(destination: DetergentInfo()) {
                        Text("세제정보")
                    }
                    NavigationLink(destination: LaundrySymbols()) {
                        Text("세탁표시기호")
                    }
                }
                HStack{
                    NavigationLink(destination: WashingMethod()) {
                        Text("세탁방법")
                    }
                    NavigationLink(destination: TimerSetting()) {
                        Text("세탁타이머")
                    }
                    
                }
            }
            .navigationTitle("Home")
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
