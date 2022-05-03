//
//  LaundrySymbols.swift
//  Laundry-tips
//
//  Created by 김태호 on 2022/04/29.
//

import SwiftUI

struct LaundrySymbols: View {
    
    var body: some View {
        ScrollView( showsIndicators: false) {
            VStack(alignment: .leading) {
                titleBox(title: "세탁 표시 기호", subTitle: nil)
                SymbolBox(boxTitle: "세탁")
                SymbolBox(boxTitle: "표백제")
                SymbolBox(boxTitle: "다림질")
                SymbolBox(boxTitle: "드라이클리닝")
                SymbolBox(boxTitle: "건조 및 탈수")
            }//VStack
        } //ScrollView_vertical
        .frame(width:359)
        .navigationBarTitle("", displayMode: .inline)
    }
}

struct LaundrySymbols_Previews: PreviewProvider {
    static var previews: some View {
        LaundrySymbols()
    }
}
