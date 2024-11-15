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
      HomeScreen()
        .tabItem {
          Icon.homeIcon
          Text(LocalKey.homeTabItemTitle)
        }
      ReceptionScreen()
        .tabItem {
          Icon.receptionIcon
          Text(LocalKey.receptionTabItemTitle)
        }
      ChatScreen()
        .tabItem {
          Icon.chatIcon
          Text(LocalKey.chatTabItemTitle)
        }
      ProfileScreen()
        .tabItem {
          Icon.profileIcon
          Text(LocalKey.profileTabItemTitle)
      }
    }
    .accentColor(ColorConst.tabItemPink)
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
