//
//  AvatarView.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 16.11.2024.
//

import SwiftUI

struct AvatarView: View {
  // MARK: Internal Properties
  var avatarUrl: String?
  
  var body: some View {
    Group {
      if let avatarUrl = avatarUrl,
         let url = URL(string: avatarUrl) {
        avatarImageLoader(url: url)
      } else {
        avatarPlaceholder()
      }
    }
    .frame(
      width: HomeScreenConst.avatarFrameSize,
      height: HomeScreenConst.avatarFrameSize
    )
  }
  
  // MARK: Private Properties
  private func avatarImageLoader(url: URL) -> some View {
    AsyncImage(url: url) { phase in
      switch phase {
      case .empty:
        avatarLoadingView()
      case .success(let image):
        avatarImageDisplay(image: image)
      case .failure:
        avatarPlaceholder()
      @unknown default:
        EmptyView()
      }
    }
  }
  
  private func avatarLoadingView() -> some View {
    ProgressView()
      .frame(
        width: HomeScreenConst.avatarFrameSize,
        height: HomeScreenConst.avatarFrameSize
      )
  }
  
  private func avatarImageDisplay(image: Image) -> some View {
    image
      .resizable()
      .scaledToFill()
      .clipShape(Circle())
  }
  
  private func avatarPlaceholder() -> some View {
    Icon.avatarPlaceholderIcon
      .font(HomeScreenConst.avatarIconFont)
      .foregroundColor(HomeScreenConst.avatarPlaceholderColor)
  }
}
