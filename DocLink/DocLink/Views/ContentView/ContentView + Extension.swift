//
//  ContentView + Extension.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 17.11.2024.
//

import SwiftUI

extension ContentView {
  // MARK: Internal Properties
  var homeScreen: some View {
    HomeScreenView()
      .tabItem {
        Icon.homeIcon
        Text(Key.homeTabItemTitle)
      }
  }
  
  var receptionScreen: some View {
    ReceptionScreenView()
      .tabItem {
        Icon.receptionIcon
        Text(Key.receptionTabItemTitle)
      }
  }
  
  var chatScreen: some View {
    ChatScreenView()
      .tabItem {
        Icon.chatIcon
        Text(Key.chatTabItemTitle)
      }
  }
  
  var profileScreen: some View {
    ProfileScreenView()
      .tabItem {
        Icon.profileIcon
        Text(Key.profileTabItemTitle)
      }
  }
  
  // MARK: Internal Methods
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

// MARK: - Localizable Keys
private enum Key {
  static let homeTabItemTitle = HomeScreenConst.screenTitleKey
  static let receptionTabItemTitle = ReceptionScreenConst.screenTitle
  static let chatTabItemTitle = ChatScreenConst.screenTitle
  static let profileTabItemTitle = ProfileScreenConst.screenTitle
}
