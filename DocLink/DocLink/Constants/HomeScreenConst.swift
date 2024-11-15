//
//  HomeScreenConst.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

import SwiftUI

enum HomeScreenConst {
  static let headerFont: Font = .system(size: 17.0, weight: .medium)
  static let bodyFont: Font = .system(size: 15.0, weight: .regular)
  static let likeButtonFont: Font = .system(size: 24.0)
  
  static let white: UIColor = .white
  static let darkGray: UIColor = .secondaryLabel
  
  static let marginsOnSides: CGFloat = 20.0
  static let verticalStackSpacing: CGFloat = 6.0
  
  static let usersDataFile: String = "UsersData"
  
  static let screenTitle = HomeScreenLocalizableKey.screenTitle.localizeString()
  static let searchBarPlaceholder = HomeScreenLocalizableKey.searchBarPlaceholder.localizeString()
  static let pickerPriceSegmentTitle = HomeScreenLocalizableKey.pickerPriceSegment.localizeString()
  static let pickerExperienceSegmentTitle = HomeScreenLocalizableKey.pickerExperienceSegment.localizeString()
  static let pickerRatingSegmentTitle = HomeScreenLocalizableKey.pickerRatingSegment.localizeString()
  static let experienceLabel = HomeScreenLocalizableKey.experienceLabel.localizeString()
  static let yearsLabel = HomeScreenLocalizableKey.yearsLabel.localizeString()
  static let ru = HomeScreenLocalizableKey.ru.localizeString()
  static let from = HomeScreenLocalizableKey.from.localizeString()
}

// MARK: - Localizable Keys
enum HomeScreenLocalizableKey: String, CaseIterable {
  case screenTitle = "HomeScreenTitleLocalKey"
  case searchBarPlaceholder = "SearchLocalKey"
  case pickerPriceSegment = "ByPriceLocalKey"
  case pickerExperienceSegment = "ByExperienceLocalKey"
  case pickerRatingSegment = "ByRatingLocalKey"
  case experienceLabel = "ExperienceLocalKey"
  case yearsLabel = "YearsLocalKey"
  case ru = "NumberFormatterLocalKey"
  case from = "FromKey"
  
  func localizeString() -> String {
    NSLocalizedString(self.rawValue, comment: .empty )
  }
}
