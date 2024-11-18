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
    createLikeButton()
  }
  
  // MARK: Private Properties
  /// Состояние кнопки (стоит лайк или нет)
  @State private var isLiked: Bool = false
  @State private var animationScale = HomeScreenConst.initialAnimationScale
}

// MARK: - Private Extension
private extension LikeButtonView {
  // MARK: Properties
  /// Содержимое кнопки (иконка "нравится" или "не нравится")
  var likeButtonContent: some View {
    Group {
      if isLiked {
        Icon.likedIcon
      } else {
        Icon.likeIcon
      }
    }
  }
  
  /// Цвет кнопки в зависимости от того стоит лайк или нет
  var likeButtonColor: Color {
    isLiked ? ColorConst.mainPink : HomeScreenConst.unLikeButtonColor
  }
  
  // MARK: Methods
  func createLikeButton() -> some View {
    Button(action: handleLikeButtonTap) {
      likeButtonContent
        .foregroundColor(likeButtonColor)
        .font(HomeScreenConst.likeButtonIconFont)
        .scaleEffect(animationScale)
    }
    .buttonStyle(PlainButtonStyle())
  }
  
  /// Обработка нажатия на кнопку
  func handleLikeButtonTap() {
    toggleLikeState()
    performLikeButtonAnimation()
  }
  
  func toggleLikeState() {
    isLiked.toggle()
  }
  
  /// Выполнить анимацию кнопки
  func performLikeButtonAnimation() {
    // увеличить размер
    withAnimation(
      .easeInOut(
        duration: HomeScreenConst.likeButtonAnimationDuration
      )
    ) {
      animationScale = HomeScreenConst.likeButtonAnimationScale
    }
    
    // к исходному арзамеру
    withAnimation(
      .easeInOut(
        duration: HomeScreenConst.likeButtonAnimationDuration)
      .delay(HomeScreenConst.likeButtonAnimationDelay)
    ) {
      animationScale = HomeScreenConst.initialAnimationScale
    }
  }
}
