//
//  Home.swift
//  Laundry-tips
//
//  Created by 김태호 on 2022/04/29.
//

import SwiftUI

struct Home: View {
    var body: some View {
        //Navigation Button List
        NavigationView {
            
            ZStack {
                Circle()
                    .fill(Color.mainBlue)
                    .frame(width: 628, height: 628)
                    .offset(x: -48, y: -396)
                
                VStack(alignment: .center) {
                    //Title Box
                    VStack(alignment: .leading) {
                        //Title
                        VStack(alignment: .leading){
                            Text("안녕하세요")
                            HStack(spacing:0){
                                Text("어쩔세탁")
                                    .foregroundColor(Color.white)
                                Text("입니다.")
                            }
                        }
                        .font(.system(size: 36, weight: .bold))
                        .padding(.bottom, 23)
                        //Subtitle
                        
                        VStack(alignment: .leading) {
                            Text("자취 경력 6년을 살려 세탁에 관한 꿀팁을 담은")
                            Text("모바일 애플리케이션을 만들었습니다.")
                            Text("관심있는 정보를 클릭해주세요!")
                        }
                        .font(.system(size: 16, weight: .medium))
                        .foregroundColor(Color(hex: "#FEFEFE"))
                        
                    }//Title Box
                    .padding(.top, 62.0)
                    .multilineTextAlignment(.leading)
                    .frame(width: 348.0)
                    
                    Spacer()
                    //IconBoxContainer
                    VStack{
                        HStack{
                            NavigationLink(destination: DetergentInfo()) {
                                IconBox(boxName: "세제정보", iconName: "drop.circle.fill", colorName: Color.magenta)
                            }.padding(.trailing, 20)
                            NavigationLink(destination: LaundrySymbols()) {
                                IconBox(boxName: "세탁표시기호", iconName: "tag.square.fill", colorName: Color.brightOrange)
                            }
                        }.padding(.bottom,20)
                        HStack{
                            NavigationLink(destination: WashingMethod()) {
                                IconBox(boxName: "세탁방법", iconName: "tshirt.fill", colorName: Color.brightGreen)
                            }.padding(.trailing, 20)
                            NavigationLink(destination: TimerSetting()) {
                                IconBox(boxName: "세탁타이머", iconName: "timer", colorName: Color.brightBlue)
                            }
                            
                        }
                    } //IconBoxContainer_VStack
                    .navigationBarHidden(true)
                    .padding(.bottom,100)
                } //ZStack
                .frame(width: 390)
            }//NavigationView
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}


