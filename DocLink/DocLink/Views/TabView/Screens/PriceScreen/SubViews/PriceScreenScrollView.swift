//
//  PriceScreenScrollView.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 18.11.2024.
//

import SwiftUI

struct PriceScreenScrollView: View {
  // MARK: Internal Properties
  var body: some View {
    createScrollView()
  }
  
  // MARK: Private Properties
  private(set) var user: User
}

// MARK: - Private Extension
private extension PriceScreenScrollView {
  func createScrollView() -> some View {
    ScrollView {
      createScrollViewContent()
    }
    .navigationTitle(PriceScreenConst.getCostOfServicesLabelText)
  }
  
  func createScrollViewContent() -> some View {
    VStack(alignment: .leading) {
      priceSection(
        title: PriceScreenConst.getVideoConsultationLabelText,
        price: user.videoChatPrice
      )
      priceSection(
        title: PriceScreenConst.getChatWithDoctorLabelText,
        price: user.textChatPrice
      )
      priceSection(
        title: PriceScreenConst.getAdmissionToTheClinicLabelText,
        price: user.hospitalPrice
      )
    }
    .padding(.horizontal, PriceScreenConst.horizontalPadding)
  }
  
  func priceSection(title: String, price: Int) -> some View {
    VStack(
      alignment: .leading,
      spacing: PriceScreenConst.verticalStackSpacing
    ) {
      Text(title)
        .font(.headline)
      priceRow(price: price)
    }
    .padding([.top])
  }
  
  func priceRow(price: Int) -> some View {
    HStack {
      Text(PriceScreenConst.getHalfAnHourLabelText)
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
