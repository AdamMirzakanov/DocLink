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
    HStack(spacing: HomeScreenConst.distanceBetweenStars) {
      ForEach(.zero..<maxRating, id: \.self) { index in
        Icon.starIcon
          .font(HomeScreenConst.starFont)
          .overlay(
            GeometryReader { proxy in
              Rectangle()
                .foregroundStyle(ColorConst.mainPink)
                .frame(
                  width: proxy.size.width * fillStar(at: index),
                  height: proxy.size.height
                )
            }
              .mask(
                Icon.starIcon
                  .font(HomeScreenConst.starFont)
              )
          )
          .onTapGesture { if isEditable { rating = Double(index) + 1 }}
      }
      .foregroundStyle(HomeScreenConst.starColor)
    }
  }
  
  // MARK: Private Properties
  @Binding private(set) var rating: Double
  private(set) var isEditable: Bool
  private let maxRating = HomeScreenConst.maxRating
  
  // MARK: Initializers
  init(
    rating: Binding<Double>,
    isEditable: Bool = false
  ) {
    _rating = rating
    self.isEditable = isEditable
  }
  
  // MARK: Private Methods
  private func fillStar(at index: Int) -> CGFloat {
    return rating >= Double(index) + 1
    ? 1
    : (rating > Double(index) ? CGFloat(rating - Double(index)) : .zero)
  }
}
