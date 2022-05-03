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
    @State var descriptionArray: [[String]]
    
    private let size: CGFloat = 160
    
    var body: some View {
        VStack(alignment: .leading,spacing: 5){
            Text(boxTitle)
                .font(.system(size: 22, weight: .bold))
                .foregroundColor(.lightBlack)
            ScrollView(.horizontal, showsIndicators: false){
                HStack {
                    if let number = number {
                        ForEach(1..<number+1, id:\.self) { index in
                            ZStack {
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(Color.white)
                                    .frame(width: size + 5, height: size + 5)
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.darkGray, lineWidth: 1)
                                    .frame(width: size, height: size)
                                VStack {
                                    VStack {
                                        Image("\(symbolMenu)\(index)")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                        .frame(width: 3*size/7, height: 3*size/7)
                                    }// ImageBox_VStack
                                    .frame(height: size * 0.3)
                                    .padding(.top, size * 0.1)
                                    
                                    VStack(alignment: .leading) {
                                        ForEach(descriptionArray[index-1], id: \.self){descript in
                                            Text(descript)
                                        }
                                    }
                                    .frame(height: size * 0.4)
                                    .font(.system(size:10))
                                }//VStack
                                .frame(width: size * 0.8, height: size * 0.8)
                                    
                            }
                        }//ForEach
                    }// if
                }//HStack
            }//ScrollView_horizontal
        }
        .padding(.bottom, 12.25)
    }
}
