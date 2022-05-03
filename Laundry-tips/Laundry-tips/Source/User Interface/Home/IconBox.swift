//
//  IconBox.swift
//  Laundry-tips
//
//  Created by 김태호 on 2022/05/01.
//

import SwiftUI

struct IconBox: View {
    @State var boxName: String
    @State var iconName: String
    @State var colorName: Color
    let size: CGFloat = 150
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(Color.white)
                .frame(width: size, height: size)
                .shadow(color: .shadowGray, radius: 4, x: 0, y: 4)
            VStack(alignment: .center){
                Image(systemName: iconName).font(.system(size: 54))
                    .padding(.bottom,5)
                    .foregroundColor(colorName)
                    .frame(height: size * 0.4)
                Text("\(boxName)")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)
                    .frame(height: size * 0.2)
            } //VStack
        }
    }
}
