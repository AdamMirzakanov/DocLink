//
//  UserCellView.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

import SwiftUI

struct UserCellView: View {
  var user: User
  
  var body: some View {
    let userDetailScreen = UserDetailScreen(user: user)
    ZStack {
      NavigationLink(destination: userDetailScreen) {
        EmptyView()
      }
      .opacity(.zero)
      .buttonStyle(PlainButtonStyle())
      
      VStack {
        UserCellHeaderView(user: user)
        DoctorAppointmentButtonView(
          isAvailable: !user.freeReceptionTime.isEmpty
        )
      }
    }
  }
}
