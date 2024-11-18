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
    createUserCellView(for: user)
  }
  
  // MARK: Private Properties
  private(set) var user: User
}

// MARK: - Private Extension
private extension UserCellView {
  // собрать ячейку
  func createUserCellView(for user: User) -> some View {
    let userDetailScreen = UserDetailScreenView(user: user)
    return ZStack {
      createNavigationLink(to: userDetailScreen)
      createUserInfoView(for: user)
    }
  }
  
  // переход на экран деталей о пользователе
  func createNavigationLink(to userDetailScreen: some View) -> some View {
    NavigationLink(destination: userDetailScreen) {
      EmptyView()
    }
    .opacity(.zero)
  }
  
  // собрать содержимое ячейки
  func createUserInfoView(for user: User) -> some View {
    VStack {
      UserCellHeaderView(user: user)
      DoctorAppointmentButtonView(
        isAvailable: !user.freeReceptionTime.isEmpty
      )
    }
  }
}
