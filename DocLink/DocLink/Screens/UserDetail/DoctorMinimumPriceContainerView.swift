//
//  DoctorMinimumPriceContainerView.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 16.11.2024.
//

import SwiftUI

struct DoctorMinimumPriceContainerView: View {
  var price: Int
  var body: some View {
    HStack {
      Text(UserDetailScreenConst.theCostOfServices)
        .padding(.leading, UserDetailScreenConst.priceContainerViewInset)
        .font(UserDetailScreenConst.bodyFont)
      Spacer()
      UserPriceView(price: price)
        .padding(.trailing, UserDetailScreenConst.priceContainerViewInset)
    }
    
    .foregroundColor(.black)
    .frame(
      maxWidth: .infinity,
      minHeight: UserDetailScreenConst.priceContainerViewHeight
    )
    .background(
      RoundedRectangle(
        cornerRadius: UserDetailScreenConst.priceContainerViewCornerRadius
      )
      .fill(UserDetailScreenConst.priceContainerViewColor)
    )
  }
}
