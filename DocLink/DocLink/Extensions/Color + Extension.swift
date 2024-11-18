//
//  Color + Extension.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

import SwiftUICore

extension Color {
  /// Создаёт `Color` из кортежа RGB.
  init(
    from color: (
      r: CGFloat,
      g: CGFloat,
      b: CGFloat,
      a: CGFloat
    )
  ) {
    self.init(
      red: color.r / ColorConst.maxValue,
      green: color.g / ColorConst.maxValue,
      blue: color.b / ColorConst.maxValue,
      opacity: color.a
    )
  }
}
