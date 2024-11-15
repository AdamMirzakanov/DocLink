//
//  UIColor + Extension.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

import UIKit

extension UIColor {
  convenience init(
    r: CGFloat,
    g: CGFloat,
    b: CGFloat,
    a: CGFloat
  ) {
    self.init(
      red: r / ColorConst.maxValue,
      green: g / ColorConst.maxValue,
      blue: b / ColorConst.maxValue,
      alpha: a
    )
  }
}
