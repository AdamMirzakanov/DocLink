//
//  ColorConst.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

import SwiftUI

enum ColorConst {
  static let maxValue: CGFloat = 255.0
  private static let greenValue: CGFloat = 83.0
  private static let blueValue: CGFloat = 124.0
  private static let opacityValue: CGFloat = 1.0
  
  static var customPinkColor: (
    r: CGFloat,
    g: CGFloat,
    b: CGFloat,
    a: CGFloat
  ) {
    return (
      r: maxValue,
      g: greenValue,
      b: blueValue,
      a: opacityValue
    )
  }
  
  static var mainPink: Color {
    Color(from: customPinkColor)
  }
}
