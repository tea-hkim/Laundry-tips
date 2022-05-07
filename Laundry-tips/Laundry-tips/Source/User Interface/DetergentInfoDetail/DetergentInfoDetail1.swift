//
//  DetergentInfoDetail.swift
//  Laundry-tips
//
//  Created by 김태호 on 2022/04/29.
//

import SwiftUI

struct DetergentInfoDetail1: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                Image("detergent1")
                    .resizable()
                    .frame(width: 390, height: 360)
                    .clipped()
                    
                VStack {
                    HStack {
                        Text("어떤 세제를 사용해야 할까?")
                            .font(.system(size: 24, weight: .bold))
                            .padding(.vertical, 31.5)
                        Spacer()
                    }
                    Text("세제는 일반적으로 물에 녹았을 때의 산도에 따라 약알칼리성 세제와 중성세제로 나뉜다. 대부분의 오염이 지방과 단백질이기 때문에 알칼리성이 높을 수록 세척력도 좋다. 하지만 세척력이 좋은 만큼 섬유가 손상될 수 있다. 생활 오염의 대부분이 약알칼리성으로 지울 수 있기 때문에 마트에서 흔히 볼 수 있는 세제이다.\n\n약알칼리성 세제로 세탁을 할 수있는 소재는 면, 마, 합성 섬유 등이 있다. 약알칼리성 세제는 면 티셔츠, 와이셔츠, 이염 염려가 없는 흰 옷이 세탁에 적합하다. 울이나 실크 등 동물성 섬유에 사용하면 옷감이 손상될 수 있어 따로 울샴푸를 사용하는 것이 좋다.\n\n중성세제는 약알칼리성 다음으로 자주 쓰인다. 울샴푸라고 해서 꼭 울에만 사용해야되는 것은 아니다. 약알칼리성 세제보다는 세척력이 떨어지긴 하지만 자극이 덜하여 상대적으로 옷의 수축이나 탈색, 이염 등이 덜 발생한다. 세탁 횟수가 잣거나 오염이 적은 면 티셔츠, 속옷 등에는 중성 세제를 사용하면 좋다.\n\n가루세제와 액체세제 중 세척력이 높은 것은 무엇일까? 어떤 세제가 세탁이 더 잘될까? 세척력만 놓고 본다면 가루세제가 더 낫다. 가루 세제는 계면활성제 그 자체이기 때문이다. 그래서 더 높은 알칼리성을 가진다. 하지만 가루세제는 물에 녹여서 사용해야 하고, 높은 알칼리성으로 섬유에 문제가 될 수도 있다. 또한 가루세제에 사용되는 성분 중에는 물에 잘녹지 않는 성분이 있어 섬유에 남아 피부 자극과 알레르기를 유발할 수 있다.\n\n")
                        .lineLimit(nil)
                }.frame(width: 330)
                
            } //VStack
            .frame(maxWidth: 390)
        } // ScrollView
    }
    
}

struct DetergentInfoDetail_Previews: PreviewProvider {
    static var previews: some View {
        DetergentInfoDetail1()
    }
}
