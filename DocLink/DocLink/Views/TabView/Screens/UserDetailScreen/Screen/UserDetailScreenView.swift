//
//  UserDetailScreenView.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

import SwiftUI

struct UserDetailScreenView: View {
  // MARK: Internal Properties
  let user: User
  var body: some View {
    VStack {
      UserDetailScreenScrollView(user: user)
      appointmentButton
    }
  }
  
  // MARK: Private Properties
  private var appointmentButton: some View {
    DoctorAppointmentButtonView(isAvailable: !user.freeReceptionTime.isEmpty)
      .padding(
        [.bottom, .horizontal],
        UserDetailScreenConst.horizontalPadding
      )
  }
}
