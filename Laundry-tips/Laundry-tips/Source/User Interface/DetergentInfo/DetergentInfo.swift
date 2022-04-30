//
//  DetergentInfo.swift
//  Laundry-tips
//
//  Created by 김태호 on 2022/04/29.
//

import SwiftUI

struct DetergentInfo: View {
    var body: some View {
        NavigationLink(destination: DetergentInfoDetail()){
            Text("세탁 디테일 콘텐츠")
        }
    }
}

struct DetergentInfo_Previews: PreviewProvider {
    static var previews: some View {
        DetergentInfo()
    }
}
