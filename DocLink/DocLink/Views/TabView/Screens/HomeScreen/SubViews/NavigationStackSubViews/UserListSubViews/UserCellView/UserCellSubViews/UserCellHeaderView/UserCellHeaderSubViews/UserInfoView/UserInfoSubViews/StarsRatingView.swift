//
//  StarsRatingView.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 17.11.2024.
//

import SwiftUI

struct StarsRatingView: View {
  // MARK: Internal Properties
  var body: some View {
    createStarsRatingView()
  }
  
  // MARK: Private Properties
  /// Текущий рейтинг (связанный с внешним источником данных).
  /// Позволяет передавать и обновлять значение рейтинга.
  @Binding private(set) var rating: Double
  
  /// Максимальное количество звездочек для рейтинга.
  private let maxRating = HomeScreenConst.maxRating
  
  // MARK: Initializers
  /// Создает компонент `StarsRatingView`.
  ///
  /// - Parameters:
  ///   - rating: Привязка значения рейтинга (`Binding<Double>`).
  init(
    rating: Binding<Double>
  ) {
    _rating = rating
  }
}

// MARK: - Private Extension
private extension StarsRatingView {
  /// Создает вью звездного рейтинга.
  ///
  /// - Returns: Набор звездочек, расположенных горизонтально.
  func createStarsRatingView() -> some View {
    HStack(spacing: HomeScreenConst.distanceBetweenStars) {
      ForEach(.zero..<maxRating, id: \.self) { index in
        starIcon(at: index)
      }
    }
    .foregroundStyle(HomeScreenConst.starColor)
  }
  
  /// Создает иконку одной звезды с наложением заливки.
  ///
  /// - Parameter index: Индекс звезды.
  /// - Returns: Вью иконки звезды с динамической заливкой.
  func starIcon(at index: Int) -> some View {
    Icon.starIcon
      .font(HomeScreenConst.starFont) // Размер звездочек
      .overlay(starOverlay(at: index))
  }
  
  /// Создает наложение заливки для звезды в зависимости от рейтинга.
  ///
  /// - Parameter index: Индекс звезды.
  /// - Returns: Вью заливки, частично или полностью покрывающее звезду.
  func starOverlay(at index: Int) -> some View {
    GeometryReader { proxy in
      Rectangle()
        .foregroundStyle(ColorConst.mainPink)
        .frame(
          width: proxy.size.width * fillStar(at: index),
          height: proxy.size.height
        )
    }
    .mask(Icon.starIcon.font(HomeScreenConst.starFont))
  }
  
  /// Вычисляет степень заполнения текущей звезды.
  ///
  /// - Parameter index: Индекс звезды.
  /// - Returns: Значение от 0 до 1, определяющее, насколько звезда заполнена.
  func fillStar(at index: Int) -> CGFloat {
    return rating >= Double(index) + 1
    ? 1
    : (rating > Double(index) ? CGFloat(rating - Double(index)) : .zero)
  }
}
