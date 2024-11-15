//
//  ProfileScreenConst.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

import Foundation

// MARK: - Localizable Keys
enum ProfileScreenLocalizableKey: String, CaseIterable {
  case screenTitle = "ProfileScreenTitleLocalKey"
  
  func localizeString() -> String {
    NSLocalizedString(self.rawValue, comment: .empty )
  }
}
