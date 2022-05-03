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
            Spacer()
            Text("WashingMethod")
            NavigationLink(destination: WashingMethodDetail()){
                Text("디테일 콘텐츠")
            }
        }//VStack
        .navigationBarTitle("",displayMode: .inline)
    }
}

struct WashingMethod_Previews: PreviewProvider {
    static var previews: some View {
        WashingMethod()
    }
}
