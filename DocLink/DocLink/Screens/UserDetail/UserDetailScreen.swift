//
//  UserDetailScreen.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

import SwiftUI

struct UserDetailScreen: View {
  let user: User
  var body: some View {
    VStack {
      ScrollView {
        VStack(
          alignment: .leading,
          spacing: UserDetailScreenConst.verticalStackSpacing
        ) {
          createUserHeaderView(user: user)
          UserDetailView(user: user)
          DoctorMinimumPriceContainerView(price: user.textChatPrice)
          Text(user.proceduresDescription)
            .lineLimit(nil)
            .font(.body)
            .padding(
              [.top, .bottom],
              UserDetailScreenConst.topBottomPadding
            )
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, UserDetailScreenConst.horizontalPadding)
        .safeAreaInset(edge: .top) {
          Color.clear.frame(height: UserDetailScreenConst.safeAreaTopPadding)
        }
      }
      .navigationBarTitle(
        user.specialization?.first?.name ?? .empty,
        displayMode: .inline
      )
      DoctorAppointmentButtonView(isAvailable: !user.freeReceptionTime.isEmpty)
        .padding(
          [.bottom, .horizontal],
          UserDetailScreenConst.horizontalPadding
        )
    }
  }
  
  // MARK: Private Methods
  // Верхняя часть с аватаркой и именем
  private func createUserHeaderView(user: User) -> some View {
    HStack(
      alignment: .top,
      spacing: UserDetailScreenConst.horizontalStackSpacing
    ) {
      AvatarView(avatarUrl: user.avatar)
      UserNameView(
        lastName: user.lastName,
        firstName: user.firstName,
        patronymic: user.patronymic
      )
    }
  }
}
