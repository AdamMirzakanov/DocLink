//
//  ContentView + Extension.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 17.11.2024.
//

import SwiftUI

extension ContentView {
  var homeScreen: some View {
    HomeScreen()
      .tabItem {
        Icon.homeIcon
        Text(Key.homeTabItemTitle)
      }
  }
  
  var receptionScreen: some View {
    ReceptionScreen()
      .tabItem {
        Icon.receptionIcon
        Text(Key.receptionTabItemTitle)
      }
  }
  
  var chatScreen: some View {
    ChatScreen()
      .tabItem {
        Icon.chatIcon
        Text(Key.chatTabItemTitle)
      }
  }
  
  var profileScreen: some View {
    ProfileScreen()
      .tabItem {
        Icon.profileIcon
        Text(Key.profileTabItemTitle)
      }
  }
}

// MARK: - Localizable Keys
private enum Key {
  static let homeTabItemTitle = HomeScreenConst.screenTitleKey
  static let receptionTabItemTitle = ReceptionScreenConst.screenTitle
  static let chatTabItemTitle = ChatScreenConst.screenTitle
  static let profileTabItemTitle = ProfileScreenConst.screenTitle
}
