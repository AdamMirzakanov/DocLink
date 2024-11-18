//
//  ColorConst.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

import SwiftUI

enum ColorConst {
  static let maxValue: CGFloat = 255.0
  static let pinkColor: (
    r: CGFloat,
    g: CGFloat,
    b: CGFloat,
    a: CGFloat
  ) = (
    maxValue,
    83.0,
    124.0,
    1.0
  )
  
  static let mainPink = Color(from: pinkColor)
}
