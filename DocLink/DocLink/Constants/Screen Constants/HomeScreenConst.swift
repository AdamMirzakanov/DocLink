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
  static let starFont: Font = .system(size: 10.0)
  
  static let selectedSegmentTextColor: UIColor = .white
  static let unselectedSegmentTextColor: UIColor = .secondaryLabel
  static let avatarPlaceholderColor: Color = Color(white: 0.7)
  static let disabledButtonColor: Color = Color(.quaternaryLabel)
  static let cellBackgroundColor: Color = Color(.secondarySystemGroupedBackground)
  static let starColor: Color = Color(white: 0.5)
  static let experienceTextColor: Color = Color(.label)
  
  static let cellShadowRadius: CGFloat = 4.0
  static let cellCornerRadius: CGFloat = 14.0
  static let marginsOnSides: CGFloat = 20.0
  static let verticalStackSpacing: CGFloat = 6.0
  static let horizontalStackSpacing: CGFloat = 12.0
  static let doctorAppointmentButtonHeight: CGFloat = 44.0
  static let doctorAppointmentCornerRadius: CGFloat = 8.0
  static let avatarFrameSize: CGFloat = 48.0
  static let distanceBetweenStars: CGFloat = 4.0
  
  static let maxRating: Int = 5
  
  static let usersDataFile: String = "UsersData"
  
  // Localizable Keys
  static let screenTitleKey = Key.screenTitleKey.localizeString()
  static let searchBarPlaceholderKey = Key.searchBarPlaceholderKey.localizeString()
  static let pickerPriceSegmentTitleKey = Key.pickerPriceSegmentKey.localizeString()
  static let pickerExperienceSegmentTitleKey = Key.pickerExperienceSegmentKey.localizeString()
  static let pickerRatingSegmentTitleKey = Key.pickerRatingSegmentKey.localizeString()
  static let experienceLabelKey = Key.experienceLabelKey.localizeString()
  static let yearsLabelKey = Key.yearsLabelKey.localizeString()
  static let currencyKey = Key.currencyKey.localizeString()
  static let fromKey = Key.fromKey.localizeString()
  static let doctorAppointmentKey = Key.doctorAppointmentKey.localizeString()
  static let noFreeScheduleKeyKey = Key.noFreeScheduleKey.localizeString()
}

// MARK: - Localizable Keys
private enum Key: String, CaseIterable {
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
