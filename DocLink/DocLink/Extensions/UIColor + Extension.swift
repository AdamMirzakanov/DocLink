//
//  UIColor + Extension.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

import UIKit

extension UIColor {
  /// Создаёт `UIColor` из кортежа RGB.
  convenience init(
    from tuple: (
      r: CGFloat,
      g: CGFloat,
      b: CGFloat,
      a: CGFloat
    )
  ) {
    self.init(
      red: tuple.r / ColorConst.maxValue,
      green: tuple.g / ColorConst.maxValue,
      blue: tuple.b / ColorConst.maxValue,
      alpha: tuple.a
    )
  }
}
