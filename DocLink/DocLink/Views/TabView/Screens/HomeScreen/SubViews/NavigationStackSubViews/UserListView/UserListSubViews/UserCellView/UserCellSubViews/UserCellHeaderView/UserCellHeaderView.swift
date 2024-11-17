//
//  UserCellHeaderView.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 16.11.2024.
//

import SwiftUI

struct UserCellHeaderView: View {
  // MARK: Internal Properties
  var body: some View {
    HStack(
      alignment: .top,
      spacing: HomeScreenConst.horizontalStackSpacing
    ) {
      AvatarView(avatarUrl: user.avatar)
      UserInfoView(user: user)
      Spacer()
      LikeButtonView()
    }
  }
  
  // MARK: Private Properties
  private(set) var user: User
}
