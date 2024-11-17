//
//  ProfileScreenConst.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

import Foundation

enum ProfileScreenConst: String, CaseIterable {
  case screenTitleKey = "profile_screen_title_key"
  
  static var getScreenTitleLabelText: String {
    screenTitleKey.localizeString()
  }
  
  func localizeString() -> String {
    NSLocalizedString(self.rawValue, comment: .empty )
  }
}
