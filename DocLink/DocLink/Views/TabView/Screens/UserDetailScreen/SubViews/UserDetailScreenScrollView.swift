//
//  UserDetailScreenScrollView.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 18.11.2024.
//

import SwiftUI

struct UserDetailScreenScrollView: View {
  // MARK: Internal Properties
  var body: some View {
    createScrollView()
  }
  
  // MARK: Private Properties
  private(set) var user: User
}

// MARK: - Private Extension
private extension UserDetailScreenScrollView {
  func createScrollView() -> some View {
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
  
  func createHeaderView() -> some View {
    createUserHeaderView(user: user)
  }
  
  func createUserDetails() -> some View {
    UserExperienceView(user: user)
  }
  
  func createDoctorPriceButtonView() -> some View {
    DoctorMinimumPriceButtonView(user: user)
  }
  
  func createProceduresDescription() -> some View {
    Text(user.proceduresDescription)
      .lineLimit(nil)
      .font(.body)
      .padding(
        [.top, .bottom],
        UserDetailScreenConst.topBottomPadding
      )
  }
  
  func createUserHeaderView(user: User) -> some View {
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
