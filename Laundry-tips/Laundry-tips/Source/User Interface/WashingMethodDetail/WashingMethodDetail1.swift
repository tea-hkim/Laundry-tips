//
//  WashingMethodDetail.swift
//  Laundry-tips
//
//  Created by 김태호 on 2022/04/29.
//

import SwiftUI

struct WashingMethodDetail1: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                Image("WashingMethod1")
                    .resizable()
                    .frame(width: 390, height: 360)
                    .clipped()
                    
                VStack {
                    HStack {
                        Text("세탁할 떄, 냉수 vs 온수?")
                            .font(.system(size: 24, weight: .bold))
                            .padding(.vertical, 31.5)
                        Spacer()
                    }
                    VStack(alignment: .leading) {
                        Text("세탁은 사람의 체온보다 높아야 때가 잘빠진다. 단백질과 지방은 체온보다 약간 높은 수온에서 잘 녹는다. 따라서 세탁기의 표준 세탁 온도도 40도이다.(세탁기 마다 다를 수 있지만 대부분의 세탁기가 그렇다)\n\n합성세제에는 효소가 들어있는데 이는 40도에서 활발하게 반응을 한다. 효소는 세탁에서 오염을 분해하는 목적으로 사용되는데 대부분의 합성세제에 들어있다. 효소가 많이 들어있을 수록 비싸지는데 비싼 세제를 사용한다면 40도에서 세탁을 하자 \n\n에너지를 절약하기 위해서 냉수를 쓰는 경우가 많다. 하지만 드럼세탁기의 경우 표준 세탁코스임에도 불구하고 물의 온도가 40도에 다다르지 않는다면 내부의 히터를 작동시킨다. 이는 더많은 전기세를 나오게 한다.\n")
                    }//Text_VStack
                    .frame(width: 330)
                }.frame(width: 330)
                
            } //VStack
            .frame(maxWidth: 390)
        } // ScrollView
    }
}

struct WashingMethodDetail_Previews: PreviewProvider {
    static var previews: some View {
        WashingMethodDetail1()
    }
}
