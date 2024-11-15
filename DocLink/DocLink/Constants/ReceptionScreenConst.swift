//
//  ReceptionScreenConst.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

import Foundation

// MARK: - Localizable Keys
enum ReceptionScreenLocalizableKey: String, CaseIterable {
  case screenTitle = "ReceptionScreenTitleLocalKey"
  
  func localizeString() -> String {
    NSLocalizedString(self.rawValue, comment: .empty )
  }
}
