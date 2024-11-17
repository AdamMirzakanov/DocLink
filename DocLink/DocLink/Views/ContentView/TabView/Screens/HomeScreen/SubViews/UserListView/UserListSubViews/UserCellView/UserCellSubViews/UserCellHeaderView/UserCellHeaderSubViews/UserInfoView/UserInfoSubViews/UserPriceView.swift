//
//  UserPriceView.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

import SwiftUI

struct UserPriceView: View {
  // MARK: Internal Properties
  var body: some View {
    let formattedPrice = numberFormatter.string(
      from: NSNumber(value: price)
    )
    let displayPrice = formattedPrice ?? .empty
    let priceText = HomeScreenConst.getFromLabelText + displayPrice
    
    return VStack(
      alignment: .leading,
      spacing: HomeScreenConst.verticalStackSpacing
    ) {
      Text(priceText)
    }
    .font(HomeScreenConst.bodyFont)
  }
  
  // MARK: Private Properties
  private(set) var price: Int
  private let numberFormatter: NumberFormatter = {
    $0.numberStyle = .currency
    $0.locale = Locale(
      identifier: HomeScreenConst.getCurrencyLabelText
    )
    $0.maximumFractionDigits = .zero
    $0.minimumFractionDigits = .zero
    return $0
  }(NumberFormatter())
}
