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
  
  // MARK: Private Methods
  private func createUserInfoView() -> some View {
    VStack(
      alignment: .leading,
      spacing: HomeScreenConst.verticalStackSpacing
    ) {
      UserNameView(
        lastName: user.lastName,
        firstName: user.firstName,
        patronymic: user.patronymic
      )
      StarsRatingView(rating: .constant(user.ratingsRating))
      UserSpecializationView(
        specializationName: user.specialization?.first?.name,
        seniority: user.seniority
      )
      UserPriceView(price: user.textChatPrice)
    }
  }
}
