//
//  WashingMethod.swift
//  Laundry-tips
//
//  Created by 김태호 on 2022/04/29.
//

import SwiftUI

struct WashingMethod: View {
    var body: some View {
        VStack {
            titleBox(title: "세탁 방법", subTitle: "관심있는 정보를 클릭해주세요")
            ScrollView{
                NavigationLink(destination: WashingMethodDetail1()){
                    WashingContentBox(index: 1)
                }
                
                NavigationLink(destination: WashingMethodDetail2()){
                    WashingContentBox(index: 2)
                }
                
                NavigationLink(destination: WashingMethodDetail3()){
                    WashingContentBox(index: 3)
                }
                
                NavigationLink(destination: WashingMethodDetail4()){
                    WashingContentBox(index: 4)
                }
                
                NavigationLink(destination: WashingMethodDetail5()){
                    WashingContentBox(index: 5)
                }
                
            }//ScrollView
            .frame(width: 390)
            .navigationBarTitle("",displayMode: .inline)
        }//VStack
    }
}

struct WashingMethod_Previews: PreviewProvider {
    static var previews: some View {
        WashingMethod()
    }
}

struct WashingContentBox: View {
    var index: Int
    var titleList: [String] = ["세탁할 떄, 냉수 vs 온수?", "냄새나는 빨래, 냄새 제거 방법", "니트 세탁 방법", "수건을 삶아야 하나요?", "올바른 건조기 사용 방법"]
    var body: some View {
        ZStack {
            Image("WashingMethod\(index)")
                .frame(width: 359, height: 139)
                .aspectRatio(contentMode: .fill)
                .clipped()
            
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(.black.opacity(0.65))
            
            Text(titleList[index - 1])
                .foregroundColor(.white)
                .font(.system(size: 18, weight: .bold))
        }
        .frame(width: 359, height: 139)
        .cornerRadius(15)
    }
}
