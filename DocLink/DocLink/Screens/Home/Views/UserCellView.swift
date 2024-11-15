//
//  UserCellView.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

import SwiftUI

struct UserCellView: View {
  var body: some View {
    let userDetailScreen = UserDetailScreen(user: user)
    ZStack {
      NavigationLink(destination: userDetailScreen) {
        EmptyView()
      }
      .opacity(.zero)
      .buttonStyle(PlainButtonStyle())
      
      VStack {
        HStack(alignment: .top) {
          UserInfoView(user: user)
          Spacer()
          LikeButtonView()
        }
        .padding()
        
        DoctorAppointmentButtonView()
      }
    }
  }
  
  var user: User
}

