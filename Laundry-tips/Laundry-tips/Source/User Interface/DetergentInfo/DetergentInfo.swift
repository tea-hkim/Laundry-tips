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
            
            NavigationLink(destination: DetergentInfoDetail_1()){
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(.white)
                        .frame(width: 359, height: 132)
                        .shadow(color: .shadowGrey, radius: 4, x: 0, y: 4)
                    Text("세탁 디테일 콘텐츠")
                }
            }
            .background(Color.white)
            
            Spacer()
        }//VStack
        .navigationBarTitle("",displayMode: .inline)
    }
}

struct DetergentInfo_Previews: PreviewProvider {
    static var previews: some View {
        DetergentInfo()
    }
}
