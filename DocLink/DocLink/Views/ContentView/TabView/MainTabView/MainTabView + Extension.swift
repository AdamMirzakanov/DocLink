//
//  MainTabView + Extension.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 18.11.2024.
//

import SwiftUI

extension MainTabView {
  // MARK: Properties
  var homeScreen: some View {
    HomeScreenView()
      .tabItem {
        Icon.homeIcon
        Text(Const.homeTabItemTitle)
      }
  }
  
  var receptionScreen: some View {
    ReceptionScreenView()
      .tabItem {
        Icon.receptionIcon
        Text(Const.receptionTabItemTitle)
      }
  }
  
  var chatScreen: some View {
    ChatScreenView()
      .tabItem {
        Icon.chatIcon
        Text(Const.chatTabItemTitle)
      }
  }
  
  var profileScreen: some View {
    ProfileScreenView()
      .tabItem {
        Icon.profileIcon
        Text(Const.profileTabItemTitle)
      }
  }
  
  // MARK: Methods
  func createTabView() -> some View {
    TabView {
      homeScreen
      receptionScreen
      chatScreen
      profileScreen
    }
    .accentColor(ColorConst.mainPink)
  }
}

// MARK: - Constants
private enum Const {
  static let homeTabItemTitle = HomeScreenConst.getScreenTitleLabelText
  static let receptionTabItemTitle = ReceptionScreenConst.getScreenTitleLabelText
  static let chatTabItemTitle = ChatScreenConst.getScreenTitleLabelText
  static let profileTabItemTitle = ProfileScreenConst.getScreenTitleLabelText
}
