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
    .accentColor(ColorConst.mainPink)
  }
  
  // MARK: Private Properties
  private var homeTab: some View {
    HomeScreen()
      .tabItem {
        Icon.homeIcon
        Text(Key.homeTabItemTitle)
      }
  }
  
  private var receptionTab: some View {
    ReceptionScreen()
      .tabItem {
        Icon.receptionIcon
        Text(Key.receptionTabItemTitle)
      }
  }
  
  private var chatTab: some View {
    ChatScreen()
      .tabItem {
        Icon.chatIcon
        Text(Key.chatTabItemTitle)
      }
  }
  
  private var profileTab: some View {
    ProfileScreen()
      .tabItem {
        Icon.profileIcon
        Text(Key.profileTabItemTitle)
      }
  }
}

#Preview {
  ContentView()
}

// MARK: - Localizable Keys
private enum Key {
  static let homeTabItemTitle = HomeScreenConst.screenTitleKey
  static let receptionTabItemTitle = ReceptionScreenConst.screenTitle
  static let chatTabItemTitle = ChatScreenConst.screenTitle
  static let profileTabItemTitle = ProfileScreenConst.screenTitle
}
