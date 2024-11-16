//
//  DoctorMinimumPriceButtonView.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 16.11.2024.
//

import SwiftUI

struct DoctorMinimumPriceButtonView: View {
  // MARK: Internal Properties
  var user: User
  var body: some View {
    NavigationLink(destination: PriceScreen(user: user)) {
      buttonContent
    }
    .frame(
      maxWidth: .infinity,
      minHeight: UserDetailScreenConst.priceButtonViewHeight
    )
    .background(buttonBackground)
  }
  
  // MARK: Private Properties
  private var buttonContent: some View {
    HStack {
      serviceCostText
      Spacer()
      priceView
      chevronIcon
    }
    .font(UserDetailScreenConst.bodyFont)
    .foregroundColor(.black)
  }
  
  private var serviceCostText: some View {
    Text(UserDetailScreenConst.costOfServicesKey)
      .padding(.leading, UserDetailScreenConst.priceButtonViewInset)
  }
  
  private var priceView: some View {
    UserPriceView(price: user.textChatPrice)
  }
  
  private var chevronIcon: some View {
    Icon.chevronIcon
      .padding(.trailing, UserDetailScreenConst.priceButtonViewInset)
      .foregroundColor(ColorConst.mainPink)
  }
  
  private var buttonBackground: some View {
    RoundedRectangle(
      cornerRadius: UserDetailScreenConst.priceButtonViewCornerRadius
    )
    .fill(UserDetailScreenConst.priceButtonViewColor)
  }
}
