//
//  WashingMethod.swift
//  Laundry-tips
//
//  Created by 김태호 on 2022/04/29.
//

import SwiftUI

struct WashingMethod: View {
    var body: some View {
        Text("WashingMethod")
        NavigationLink(destination: WashingMethodDetail()){
            Text("디테일 콘텐츠")
        }
    }
}

struct WashingMethod_Previews: PreviewProvider {
    static var previews: some View {
        WashingMethod()
    }
}
