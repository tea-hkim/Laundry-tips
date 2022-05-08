//
//  SubtitleView.swift
//  Laundry-tips
//
//  Created by 김태호 on 2022/05/02.
//

import SwiftUI

struct titleBox: View {
    @State var title: String
    @State var subTitle: String?
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(title)
                    .font(.system(size: 36, weight: .bold))
                .padding(.bottom, 9)
                Spacer()
            }
            if let subTitle = subTitle {
                HStack {
                    Text(subTitle)
                        .font(.system(size: 18, weight: .medium))
                        .foregroundColor(Color(hex: "717573"))
                    Spacer()
                }
            }
        }
        .frame(width: 359)
        .padding(.top, 15)
        .padding(.bottom, 20)
    }
}
