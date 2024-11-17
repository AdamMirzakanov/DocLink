//
//  ReceptionScreenConst.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

import Foundation

enum ReceptionScreenConst: String, CaseIterable {
  case screenTitleKey = "reception_screen_title_key"
  
  static var getScreenTitleLabelText: String {
    screenTitleKey.localizeString()
  }
  
  func localizeString() -> String {
    NSLocalizedString(self.rawValue, comment: .empty )
  }
}
