//
//  UserCellHeaderView.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 16.11.2024.
//

import SwiftUI

/// Верхняя часть ячейки.
/// Здесь все кроме розовой кнопки.
struct UserCellHeaderView: View {
  // MARK: Internal Properties
  var body: some View {
    createCellHeader()
  }
  
  // MARK: Private Properties
  private(set) var user: User
  
  // MARK: Private Methods
  private func createCellHeader() -> some View {
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
