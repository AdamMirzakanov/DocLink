//
//  ContentView.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 14.11.2024.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    TabView {
      homeTab
      receptionTab
      chatTab
      profileTab
    }
    .accentColor(ColorConst.tabItemPink)
  }
  
  // MARK: Private Properties
  private var homeTab: some View {
    HomeScreen()
      .tabItem {
        Icon.homeIcon
        Text(LocalKey.homeTabItemTitle)
      }
  }
  
  private var receptionTab: some View {
    ReceptionScreen()
      .tabItem {
        Icon.receptionIcon
        Text(LocalKey.receptionTabItemTitle)
      }
  }
  
  private var chatTab: some View {
    ChatScreen()
      .tabItem {
        Icon.chatIcon
        Text(LocalKey.chatTabItemTitle)
      }
  }
  
  private var profileTab: some View {
    ProfileScreen()
      .tabItem {
        Icon.profileIcon
        Text(LocalKey.profileTabItemTitle)
      }
  }
}

#Preview {
  ContentView()
}

// MARK: - Localizable Keys
private enum LocalKey {
  static let homeTabItemTitle = HomeScreenConst.screenTitle
  static let receptionTabItemTitle = ReceptionScreenConst.screenTitle
  static let chatTabItemTitle = ChatScreenConst.screenTitle
  static let profileTabItemTitle = ProfileScreenConst.screenTitle
}
