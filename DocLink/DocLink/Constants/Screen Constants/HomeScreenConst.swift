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
  static let avatarIconFont: Font = .system(size: 48.0)
  
  static let selectedSegmentTextColor: UIColor = .white
  static let unselectedSegmentTextColor: UIColor = .secondaryLabel
  static let avatarPlaceholderColor: Color = Color(white: 0.7)
  static let disabledButtonColor: Color = Color(white: 0.8)
  static let cellBackgroundColor: Color = Color(white: 0.9)
  
  static let cellShadowRadius: CGFloat = 4.0
  static let cellCornerRadius: CGFloat = 14.0
  static let marginsOnSides: CGFloat = 20.0
  static let verticalStackSpacing: CGFloat = 6.0
  static let horizontalStackSpacing: CGFloat = 12.0
  static let doctorAppointmentButtonHeight: CGFloat = 44.0
  static let doctorAppointmentCornerRadius: CGFloat = 8.0
  static let avatarFrameSize: CGFloat = 48.0
  
  static let usersDataFile: String = "UsersData"
  
  // Localizable Keys
  static let screenTitleKey = HomeScreenLocalizableKey.screenTitleKey.localizeString()
  static let searchBarPlaceholderKey = HomeScreenLocalizableKey.searchBarPlaceholderKey.localizeString()
  static let pickerPriceSegmentTitleKey = HomeScreenLocalizableKey.pickerPriceSegmentKey.localizeString()
  static let pickerExperienceSegmentTitleKey = HomeScreenLocalizableKey.pickerExperienceSegmentKey.localizeString()
  static let pickerRatingSegmentTitleKey = HomeScreenLocalizableKey.pickerRatingSegmentKey.localizeString()
  static let experienceLabelKey = HomeScreenLocalizableKey.experienceLabelKey.localizeString()
  static let yearsLabelKey = HomeScreenLocalizableKey.yearsLabelKey.localizeString()
  static let currencyKey = HomeScreenLocalizableKey.currencyKey.localizeString()
  static let fromKey = HomeScreenLocalizableKey.fromKey.localizeString()
  static let doctorAppointmentKey = HomeScreenLocalizableKey.doctorAppointmentKey.localizeString()
  static let noFreeScheduleKeyKey = HomeScreenLocalizableKey.noFreeScheduleKey.localizeString()
}

// MARK: - Localizable Keys
enum HomeScreenLocalizableKey: String, CaseIterable {
  case screenTitleKey = "home_screen_title_key"
  case searchBarPlaceholderKey = "search_key"
  case pickerPriceSegmentKey = "by_price_key"
  case pickerExperienceSegmentKey = "by_experience_key"
  case pickerRatingSegmentKey = "by_rating_key"
  case experienceLabelKey = "experience_key"
  case yearsLabelKey = "years_key"
  case currencyKey = "currency_key"
  case fromKey = "from_key"
  case doctorAppointmentKey = "doctor_appointment_key"
  case noFreeScheduleKey = "no_free_schedule_key"
  
  func localizeString() -> String {
    NSLocalizedString(self.rawValue, comment: .empty )
  }
}
