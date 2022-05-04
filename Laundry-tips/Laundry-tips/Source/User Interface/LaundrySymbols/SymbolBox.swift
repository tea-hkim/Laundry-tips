//
//  SymbolBox.swift
//  Laundry-tips
//
//  Created by 김태호 on 2022/05/03.
//

import SwiftUI

struct SymbolBox: View {
    @State var symbolMenu: String
    @State var boxTitle: String
    @State var number: Int?
    @State var descriptionArray: [String]
    
    private let vSize: CGFloat = 160
    private let hSize: CGFloat = 90
    
    
    
    var body: some View {
        VStack(alignment: .leading,spacing: 5){
            Divider()
            Text(boxTitle)
                .font(.system(size: 22, weight: .bold))
                .foregroundColor(.lightBlack)
                .padding(.top, 12)
            ScrollView(.horizontal, showsIndicators: false){
                HStack {
                    if let number = number {
                        ForEach(1..<number+1, id:\.self) { index in
                            VStack() {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        .fill(Color.white)
                                        .frame(width: hSize, height: hSize)
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(Color.darkGray, lineWidth: 1)
                                        .frame(width: hSize, height: hSize)
                                    Image("\(symbolMenu)\(index)")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: hSize * 0.5, height: hSize * 0.5)
                                }//ImageBox_ZStack
                                .frame(width: hSize, height: vSize * 0.6)
                                VStack(alignment: .trailing) {
                                    Text(descriptionArray[index-1])
                                        .kerning(-1)
//                                        .frame(width: hSize * 0.9, height: vSize * 0.3)
                                    .font(.system(size:10))
                                    .lineLimit(nil)
                                    Spacer()
                                }
                                .frame(width: hSize, height: vSize * 0.4)
                            }//IconContainer_VStack
                            .frame(width: hSize, height: vSize + 5)
                            .padding(.leading, 2)
                            
                        }//ForEach
                    }// if
                }//HStack
            }//ScrollView_horizontal
            .padding(.top, 6)
        }
        .padding(.bottom, 10)
    }
}
