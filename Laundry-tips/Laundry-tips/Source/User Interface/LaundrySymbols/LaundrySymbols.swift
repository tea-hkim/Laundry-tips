//
//  LaundrySymbols.swift
//  Laundry-tips
//
//  Created by 김태호 on 2022/04/29.
//

import SwiftUI

struct LaundrySymbols: View {
    
    var body: some View {
        VStack {
            titleBox(title: "세탁 표시 기호", subTitle: nil)
            Text("LaundrySymbols")
        }
        .navigationBarTitle("", displayMode: .inline)
    }
}

struct LaundrySymbols_Previews: PreviewProvider {
    static var previews: some View {
            LaundrySymbols()
    }
}
