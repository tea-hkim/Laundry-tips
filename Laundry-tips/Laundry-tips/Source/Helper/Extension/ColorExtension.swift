//
//  ColorExtnesion.swift
//  Laundry-tips
//
//  Created by 김태호 on 2022/04/30.
//

import SwiftUI

extension Color {
    static let mainBlue = Color(hex: "#374DFC")
    static let magenta = Color(hex: "#FC515A")
    static let brightGreen = Color(hex: "#2BFC60")
    static let brightOrange = Color(hex: "#FCCA1E")
    static let brightBlue = Color(hex: "#1E38FC")
    static let shadowGrey = Color(hex: "#949393").opacity(0.2)
}

extension Color {
  init(hex: String) {
    let scanner = Scanner(string: hex)
    _ = scanner.scanString("#")
    
    var rgb: UInt64 = 0
    scanner.scanHexInt64(&rgb)
    
    let r = Double((rgb >> 16) & 0xFF) / 255.0
    let g = Double((rgb >>  8) & 0xFF) / 255.0
    let b = Double((rgb >>  0) & 0xFF) / 255.0
    self.init(red: r, green: g, blue: b)
  }
}
