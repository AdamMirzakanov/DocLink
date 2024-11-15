//
//  UserInfoView.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

import SwiftUI

struct UserInfoView: View {
  var body: some View {
    VStack(
      alignment: .leading,
      spacing: HomeScreenConst.verticalStackSpacing
    ) {
      UserNameView(
        lastName: user.lastName,
        firstName: user.firstName,
        patronymic: user.patronymic
      )
      UserSpecializationView(
        specializationName: user.specialization?.first?.name,
        seniority: user.seniority
      )
      UserPriceView(price: user.textChatPrice)
    }
  }
  
  var user: User
}
