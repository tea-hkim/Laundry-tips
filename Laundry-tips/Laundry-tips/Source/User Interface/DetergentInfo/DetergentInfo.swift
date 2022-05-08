//
//  DetergentInfo.swift
//  Laundry-tips
//
//  Created by 김태호 on 2022/04/29.
//

import SwiftUI

struct DetergentInfo: View {
    var body: some View {
        VStack {
            titleBox(title: "세제 정보", subTitle: "관심있는 정보를 클릭해주세요")
            ScrollView{
                NavigationLink(destination: DetergentInfoDetail1()){
                    DetergentContentBox(index: 1)
                }
                
                NavigationLink(destination: DetergentInfoDetail2()){
                    DetergentContentBox(index: 2)
                }
                
                NavigationLink(destination: DetergentInfoDetail3()){
                    DetergentContentBox(index: 3)
                }
                
                NavigationLink(destination: DetergentInfoDetail4()){
                    DetergentContentBox(index: 4)
                }
                
                NavigationLink(destination: DetergentInfoDetail5()){
                    DetergentContentBox(index: 5)
                }
                
            }//ScrollView
            .frame(width: 390)
            .navigationBarTitle("",displayMode: .inline)
        }//VStack
    }
}
struct DetergentInfo_Previews: PreviewProvider {
    static var previews: some View {
        DetergentInfo()
    }
}

struct DetergentContentBox: View {
    var index: Int
    var titleList: [String] = ["어떤 세제를 사용해야 할까?", "천연세제를 사용해본 적이 있나요?", "섬유유연제 어떻게 사용할까요?", "세제를 얼마나 넣어야 할까요?", "이런 세제는 사용하지 말자"]
    var body: some View {
        ZStack {
            Image("detergent\(index)")
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
