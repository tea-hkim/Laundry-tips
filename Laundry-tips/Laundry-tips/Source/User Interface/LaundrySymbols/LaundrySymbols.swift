//
//  LaundrySymbols.swift
//  Laundry-tips
//
//  Created by 김태호 on 2022/04/29.
//

import SwiftUI

struct LaundrySymbols: View {
    var LaundryDescription: [String] = ["물 온도 95도롤 세탁\n세탁기, 손세탁 가능\n세제 종류 제한 없음\n삶을 수 있음", "물 온도 60도로 세탁\n세탁기, 손세탁 가능\n세제 종류 제한 없음", "물 온도 40도로 세탁","세탁기, 손세탁 가능\n세제 종류 제한 없음", "물 온도 40도로 세탁\n세탁기로 약하게 세탁\n약하게 손세탁 가능\n세제 종류 제한 없음", "물 온도 30도로 세탁\n세탁기로 약하게 세탁\n약하게 손세탁 가능\n중성세제 사용", "물 온도 30도로 세탁\n세탁기 사용 불가\n약하게 손세탁\n중성세제 사용","물세탁 안됨"]
    var bleachDescription: [String] = ["염소계 표백제로 표백","염소계 표백제로\n표백할 수 없음","산소계 표백제로 표백","산소계 표백제로 \n표백할 수 없음","염소.산소계\n표백제로 표백","염소.산소계 표백제로\n표백할 수 없음"]
    var ironingDescription: [String] = ["180~210도로 다림질","원단 위에 천을 놓고\n180~210도로 다림질", "140~160도로 다림질", "원단 위에 천을 놓고\n140~160도로 다림질", "80~120도로 다림질", "원단 위에 천을 놓고\n80~120도로 다림질", "다림질 할 수 없음"]
    var dryCleaningDescription: [String] = ["드라이클리닝 가능\n용제는 클로로에틸렌\n또는 석유계 사용", "드라이클리닝 가능\n용제는 석유계 가능", "드라이클리닝 할 수 있으나\n셀프 서비스는 할 수 없음\n(전문점에서만 가능)", "드라이클리닝 안됨"]
    var dryDehydrationDescription: [String] = ["햇볕에 건조\n옷걸이에 걸어서 건조", "그늘에 건조\n옷걸이에 걸어서 건조", "햇볕에 건조\n바닥에 뉘어서 건조", "그늘에 건조\n바닥에 뉘어서 건조", "세탁후 건조할 때\n기계 건조할 수 있음","세탁후 건조할 때\n기계 건조할 수 없음", "손으로 약하게 짬" ,"손으로 짜면 안됨"]
    
    var body: some View {
        ScrollView( showsIndicators: false) {
            VStack(alignment: .leading) {
                titleBox(title: "세탁 표시 기호", subTitle: nil)
                SymbolBox(symbolMenu:"Laundry", boxTitle: "세탁", number: 7, descriptionArray: LaundryDescription)
                SymbolBox(symbolMenu:"Bleach",boxTitle: "표백제", number: 6, descriptionArray: bleachDescription)
                SymbolBox(symbolMenu:"Ironing",boxTitle: "다림질" , number: 7 , descriptionArray: ironingDescription)
                SymbolBox(symbolMenu:"DryCleaning",boxTitle: "드라이클리닝", number: 4, descriptionArray: dryCleaningDescription)
                SymbolBox(symbolMenu:"DryDehydration", boxTitle: "건조 및 탈수", number: 8, descriptionArray: dryDehydrationDescription)
            }//VStack
        } //ScrollView_vertical
        .frame(width:359)
        .navigationBarTitle("", displayMode: .inline)
    }
}

struct LaundrySymbols_Previews: PreviewProvider {
    static var previews: some View {
        LaundrySymbols()
            .previewInterfaceOrientation(.portrait)
    }
}
