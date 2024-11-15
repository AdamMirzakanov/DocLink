//
//  Color + Extension.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

import SwiftUICore

extension Color {
  init(
    r: CGFloat,
    g: CGFloat,
    b: CGFloat,
    a: CGFloat
  ) {
    self.init(
      red: r / ColorConst.maxValue,
      green: g / ColorConst.maxValue,
      blue: b / ColorConst.maxValue,
      opacity: a
    )
  }
}
