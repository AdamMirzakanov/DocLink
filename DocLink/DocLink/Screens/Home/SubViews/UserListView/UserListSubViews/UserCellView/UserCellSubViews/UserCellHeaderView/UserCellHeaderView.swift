//
//  UserCellHeaderView.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 16.11.2024.
//

import SwiftUI

struct UserCellHeaderView: View {
  var user: User
  
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
}
