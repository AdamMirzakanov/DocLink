//
//  AvatarView.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 16.11.2024.
//

import SwiftUI

struct AvatarView: View {
  // MARK: Internal Properties
  var body: some View {
    createAvatarView()
  }
  
  // MARK: Private Properties
  private(set) var avatarUrl: String?
}

// MARK: - Private Extension
private extension AvatarView {
  func createAvatarView() -> some View {
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
  
  func avatarImageLoader(url: URL) -> some View {
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
  
  func avatarLoadingView() -> some View {
    ProgressView()
      .frame(
        width: HomeScreenConst.avatarFrameSize,
        height: HomeScreenConst.avatarFrameSize
      )
  }
  
  func avatarImageDisplay(image: Image) -> some View {
    image
      .resizable()
      .scaledToFill()
      .clipShape(Circle())
  }
  
  func avatarPlaceholder() -> some View {
    Icon.avatarPlaceholderIcon
      .font(HomeScreenConst.avatarIconFont)
      .foregroundColor(HomeScreenConst.avatarPlaceholderColor)
  }
}
