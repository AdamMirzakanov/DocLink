//
//  ChatScreenConst.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

import Foundation

// MARK: - Localizable Keys
enum ChatScreenConst: String, CaseIterable {
  case screenTitleKey = "chat_screen_title_key"
  
  static var screenTitle: String {
    screenTitleKey.localizeString()
  }
  
  func localizeString() -> String {
    NSLocalizedString(self.rawValue, comment: .empty )
  }
}
