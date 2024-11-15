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
  static let likeButtonIconFont: Font = .system(size: 24.0)
  static let avatarIconFont: Font = .system(size: 44)
  
  static let selectedSegmentTextColor: UIColor = .white
  static let unselectedSegmentTextColor: UIColor = .secondaryLabel
  static let avatarPlaceholderColor: Color = Color(white: 0.7)
  
  static let marginsOnSides: CGFloat = 20.0
  static let verticalStackSpacing: CGFloat = 6.0
  static let horizontalStackSpacing: CGFloat = 12.0
  static let doctorAppointmentButtonHeight: CGFloat = 44.0
  static let doctorAppointmentCornerRadius: CGFloat = 8.0
  static let avatarFrameSize: CGFloat = 44.0
  
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
  static let doctorAppointment = HomeScreenLocalizableKey.doctorAppointment.localizeString()
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
  case doctorAppointment = "DoctorAppointmentKey"
  
  func localizeString() -> String {
    NSLocalizedString(self.rawValue, comment: .empty )
  }
}
