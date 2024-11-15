//
//  ChatScreenConst.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

import Foundation

// MARK: - Localizable Keys
enum ChatScreenLocalizableKey: String, CaseIterable {
  case screenTitle = "ChatScreenTitleLocalKey"
  
  func localizeString() -> String {
    NSLocalizedString(self.rawValue, comment: .empty )
  }
}
