//
//  DoctorSortCriterion.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

enum DoctorSortCriterion: String, CaseIterable, Identifiable {
  case price
  case experience
  case rating
  
  var id: Self {
    self
  }
  
  var title: String {
    switch self {
    case .price:
      return HomeScreenConst.pickerPriceSegmentTitleKey
    case .experience:
      return HomeScreenConst.pickerExperienceSegmentTitleKey
    case .rating:
      return HomeScreenConst.pickerRatingSegmentTitleKey
    }
  }
}
