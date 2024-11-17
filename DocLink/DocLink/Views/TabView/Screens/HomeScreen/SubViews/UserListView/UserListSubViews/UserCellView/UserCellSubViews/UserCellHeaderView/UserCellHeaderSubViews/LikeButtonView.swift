//
//  LikeButtonView.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

import SwiftUI

struct LikeButtonView: View {
  // MARK: Internal Properties
  var body: some View {
    Button(action: handleLikeButtonTap) {
      likeButtonContent
        .foregroundColor(likeButtonColor)
        .font(HomeScreenConst.likeButtonIconFont)
        .scaleEffect(animationScale)
    }
    .buttonStyle(PlainButtonStyle())
  }
  
  // MARK: Private Properties
  @State private var isLiked: Bool = false
  @State private var animationScale = HomeScreenConst.initialAnimationScale
}

// MARK: - Private Extension
private extension LikeButtonView {
  // MARK: Properties
  var likeButtonContent: some View {
    Group {
      if isLiked {
        Icon.likedIcon
      } else {
        Icon.likeIcon
      }
    }
  }
  
  var likeButtonColor: Color {
    isLiked ? ColorConst.mainPink : HomeScreenConst.unLikeButtonColor
  }
  
  // MARK: Methods
  func handleLikeButtonTap() {
    toggleLikeState()
    performLikeButtonAnimation()
  }
  
  func toggleLikeState() {
    isLiked.toggle()
  }
  
  func performLikeButtonAnimation() {
    withAnimation(
      .easeInOut(
        duration: HomeScreenConst.likeButtonAnimationDuration
      )
    ) {
      animationScale = HomeScreenConst.likeButtonAnimationScale
    }
    
    withAnimation(
      .easeInOut(
        duration: HomeScreenConst.likeButtonAnimationDuration)
      .delay(HomeScreenConst.likeButtonAnimationDelay)
    ) {
      animationScale = HomeScreenConst.initialAnimationScale
    }
  }
}
