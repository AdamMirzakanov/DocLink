//
//  SwiftUIView.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 17.11.2024.
//

import SwiftUI

struct PriceScreen: View {
  // MARK: Internal Properties
  var user: User
  var body: some View {
    ScrollView {
      VStack(alignment: .leading) {
        priceSection(
          title: PriceScreenConst.videoConsultationKey,
          price: user.videoChatPrice
        )
        priceSection(
          title: PriceScreenConst.chatWithDoctorKey,
          price: user.textChatPrice
        )
        priceSection(
          title: PriceScreenConst.admissionToTheClinicKey,
          price: user.hospitalPrice
        )
      }
      .padding(.horizontal, PriceScreenConst.horizontalPadding)
    }
    .navigationTitle(PriceScreenConst.costOfServicesKey)
  }
  
  // MARK: Private Methods
  private func priceSection(title: String, price: Int) -> some View {
    VStack(
      alignment: .leading,
      spacing: PriceScreenConst.verticalStackSpacing
    ) {
      Text(title)
        .font(.headline)
      priceRow(price: price)
    }
    .padding([.bottom, .top])
  }
  
  private func priceRow(price: Int) -> some View {
    HStack {
      Text(PriceScreenConst.halfAnHourKey)
      Spacer()
      UserPriceView(price: price)
    }
    .foregroundColor(PriceScreenConst.priceTextColor)
    .frame(
      maxWidth: .infinity,
      minHeight: PriceScreenConst.priceViewHeight
    )
    .padding(.horizontal)
    .background(
      RoundedRectangle(
        cornerRadius: PriceScreenConst.priceViewCornerRadius
      )
      .fill(PriceScreenConst.priceViewColor)
    )
  }
}
