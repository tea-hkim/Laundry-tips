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
    
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(Color.white)
                .frame(width: 150, height: 155)
                .shadow(color: .shadowGrey, radius: 4, x: 0, y: 4)
            VStack{
                Image(systemName: iconName).font(.system(size: 56))
                    .padding(.bottom,5)
                    .foregroundColor(colorName)
                    
                Text("\(boxName)")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)
            } //VStack
        }
    }
}
