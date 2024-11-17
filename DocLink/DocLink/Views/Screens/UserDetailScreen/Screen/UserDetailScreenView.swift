//
//  UserDetailScreenView.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

import SwiftUI

struct UserDetailScreenView: View {
  // MARK: Internal Properties
  let user: User
  var body: some View {
    VStack {
      createContentScrollView()
      createAppointmentButton()
    }
  }
  
  // MARK: Private Methods
  private func createContentScrollView() -> some View {
    ScrollView {
      VStack(
        alignment: .leading,
        spacing: UserDetailScreenConst.verticalStackSpacing
      ) {
        createHeaderView()
        createUserDetails()
        createDoctorPriceButtonView()
        createProceduresDescription()
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
  }
  
  private func createHeaderView() -> some View {
    createUserHeaderView(user: user)
  }
  
  private func createUserDetails() -> some View {
    UserExperienceView(user: user)
  }
  
  private func createDoctorPriceButtonView() -> some View {
    DoctorMinimumPriceButtonView(user: user)
  }
  
  private func createProceduresDescription() -> some View {
    Text(user.proceduresDescription)
      .lineLimit(nil)
      .font(.body)
      .padding(
        [.top, .bottom],
        UserDetailScreenConst.topBottomPadding
      )
  }
  
  private func createAppointmentButton() -> some View {
    DoctorAppointmentButtonView(isAvailable: !user.freeReceptionTime.isEmpty)
      .padding(
        [.bottom, .horizontal],
        UserDetailScreenConst.horizontalPadding
      )
  }
  
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
