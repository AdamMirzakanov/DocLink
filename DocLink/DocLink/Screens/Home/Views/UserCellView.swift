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
          Image(systemName: "person.crop.circle.fill")
            .font(.system(size: 42.0))
          UserInfoView(user: user)
          Spacer()
          LikeButtonView()
        }
        
        DoctorAppointmentButtonView()
      }
    }
  }
  
  var user: User
}

