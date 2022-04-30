//
//  ViewRouter.swift
//  Laundry-tips
//
//  Created by 김태호 on 2022/04/30.
//

import SwiftUI

enum viewRoute {
    case Home
    case DetergentInfo
    case WashingMethod
    case LaundrySymbols
    case TimerSetting
    case TimerOn
}

struct ViewRouter: View {
    
    @State var viewStatus : viewRoute = .Home
    
    var body: some View {
        switch viewStatus{
        case .Home:
            Home(viewStatus: $viewStatus)
        case .DetergentInfo:
            DetergentInfo(viewStatus: $viewStatus)
        case .LaundrySymbols:
            LaundrySymbols(viewStatus: $viewStatus)
        case .WashingMethod:
            WashingMethod(viewStatus: $viewStatus)
        case .TimerSetting:
            TimerSetting(viewStatus: $viewStatus)
        case .TimerOn:
            TimerOn(viewStatus: $viewStatus)
        }
    }
}

struct ViewRouter_Previews: PreviewProvider {
    static var previews: some View {
        ViewRouter()
    }
}
