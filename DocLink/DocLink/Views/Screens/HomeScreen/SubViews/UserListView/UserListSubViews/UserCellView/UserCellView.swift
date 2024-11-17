//
//  UserCellView.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

import SwiftUI

struct UserCellView: View {
  // MARK: Internal Properties
  var body: some View {
    let userDetailScreen = UserDetailScreenView(user: user)
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
  
  // MARK: Private Properties
  private(set) var user: User
}
