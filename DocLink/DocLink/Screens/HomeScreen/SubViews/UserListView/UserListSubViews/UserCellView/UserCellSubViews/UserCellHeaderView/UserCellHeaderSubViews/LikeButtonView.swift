//
//  LikeButtonView.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

import SwiftUI

struct LikeButtonView: View {
  var body: some View {
    Button(action: {
      print("Heart button tapped")
    }) {
      Icon.likeIcon
        .foregroundColor(HomeScreenConst.avatarPlaceholderColor)
        .font(HomeScreenConst.likeButtonIconFont)
    }
    .buttonStyle(PlainButtonStyle())
  }
}
