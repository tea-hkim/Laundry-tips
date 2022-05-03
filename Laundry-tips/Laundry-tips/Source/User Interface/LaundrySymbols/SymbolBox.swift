//
//  SymbolBox.swift
//  Laundry-tips
//
//  Created by 김태호 on 2022/05/03.
//

import SwiftUI

struct SymbolBox: View {
    @State var boxTitle: String
    
    var body: some View {
        VStack(alignment: .leading){
            Text(boxTitle)
                .font(.system(size: 24, weight: .medium))
                .foregroundColor(.lightBlack)
            ScrollView(.horizontal, showsIndicators: false){
                HStack {
                    ForEach(0..<10) { index in
                        RoundedRectangle(cornerRadius: 50, style: .continuous)
                            .fill(Color.white)
                            .border(Color.darkGray,width: 1)
                            .frame(width: 140, height: 140)
                            .overlay(Text("content_\(index)").foregroundColor(.lightBlack))
                    }
                }//HStack
            }//ScrollView_horizontal
        }
        .padding(.bottom, 12.25)
    }
}
