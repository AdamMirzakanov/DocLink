//
//  DoctorMinimumPriceButtonView.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 16.11.2024.
//

import SwiftUI

struct DoctorMinimumPriceButtonView: View {
  // MARK: Internal Properties
  var body: some View {
    NavigationLink(destination: PriceScreenView(user: user)) {
      buttonContent
    }
    .frame(
      maxWidth: .infinity,
      minHeight: UserDetailScreenConst.priceButtonViewHeight
    )
    .background(buttonBackground)
  }
  
  // MARK: Private Properties
  private(set) var user: User
}

// MARK: - Private Extension
private extension DoctorMinimumPriceButtonView {
  var buttonContent: some View {
    HStack {
      serviceCostText
      Spacer()
      priceView
      chevronIcon
    }
    .font(UserDetailScreenConst.bodyFont)
    .foregroundColor(UserDetailScreenConst.priceTextColor)
  }
  
  var serviceCostText: some View {
    Text(UserDetailScreenConst.costOfServicesKey)
      .padding(.leading, UserDetailScreenConst.priceButtonViewInset)
  }
  
  var priceView: some View {
    UserPriceView(price: user.textChatPrice)
  }
  
  var chevronIcon: some View {
    Icon.chevronIcon
      .padding(.trailing, UserDetailScreenConst.priceButtonViewInset)
      .foregroundColor(ColorConst.mainPink)
  }
  
  var buttonBackground: some View {
    RoundedRectangle(
      cornerRadius: UserDetailScreenConst.priceButtonViewCornerRadius
    )
    .fill(UserDetailScreenConst.priceButtonViewColor)
  }
}
