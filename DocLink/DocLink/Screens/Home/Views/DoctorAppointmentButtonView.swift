//
//  DoctorAppointmentButtonView.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

import SwiftUI

struct DoctorAppointmentButtonView: View {
  var body: some View {
    Button(action: {
      print("Doctor appointment button tapped")
    }) {
      Text(HomeScreenConst.doctorAppointment)
        .font(.headline)
        .foregroundColor(.white)
        .frame(
          maxWidth: .infinity,
          minHeight: HomeScreenConst.doctorAppointmentButtonHeight
        )
        .background(ColorConst.tabItemPink)
        .cornerRadius(HomeScreenConst.doctorAppointmentCornerRadius)
    }
    .buttonStyle(PlainButtonStyle())
  }
}
