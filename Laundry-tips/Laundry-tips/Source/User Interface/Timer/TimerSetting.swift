//
//  TimerSetting.swift
//  Laundry-tips
//
//  Created by 김태호 on 2022/04/29.
//

import SwiftUI

struct TimerSetting: View {
    
    var body: some View {
        VStack {
            titleBox(title: "세탁 타이머")
            Text("타이머는 작업중....")
                .font(.system(size: 24, weight: .bold))
                .foregroundColor(.mainBlue)
            Spacer()
        }
        .navigationBarTitle("", displayMode: .inline)
    }
}

struct TimerSetting_Previews: PreviewProvider {
    static var previews: some View {
        TimerSetting()
    }
}
