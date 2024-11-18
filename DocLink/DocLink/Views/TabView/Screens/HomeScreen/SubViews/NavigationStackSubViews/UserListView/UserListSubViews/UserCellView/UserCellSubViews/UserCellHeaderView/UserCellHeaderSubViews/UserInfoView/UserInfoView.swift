//
//  UserInfoView.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

import SwiftUI

struct UserInfoView: View {
  // MARK: Internal Properties
  var body: some View {
    createUserInfoView()
  }
  
  // MARK: Private Properties
  private(set) var user: User
}

// MARK: - Private Extension
private extension UserInfoView {
  func createUserInfoView() -> some View {
    VStack(
      alignment: .leading,
      spacing: HomeScreenConst.verticalStackSpacing
    ) {
      getUserNameView()
      getStarsRatingView()
      getUserPriceView()
    }
  }
  
  func getUserNameView() -> some View {
    UserNameView(
      lastName: user.lastName,
      firstName: user.firstName,
      patronymic: user.patronymic
    )
  }
  
  func getStarsRatingView() -> some View {
    StarsRatingView(rating: .constant(user.ratingsRating))
  }
  
  func getUserSpecializationView() -> some View {
    let specialization = user.specialization.first?.name
    return UserSpecializationView(
      specializationName: specialization,
      seniority: user.seniority
    )
  }
  
  func getUserPriceView() -> some View {
    UserPriceView(price: user.textChatPrice)
  }
}
