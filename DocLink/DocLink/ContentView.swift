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
      HomeTabView()
        .tabItem {
          Image(systemName: "house.fill")
          Text("Главная")
        }
      ReceptionTabView()
        .tabItem {
          Image(systemName: "list.clipboard")
          Text("Приемы")
        }
      ChatTabView()
        .tabItem {
          Image(systemName: "message")
          Text("Чат")
        }
      ProfileTabView()
        .tabItem {
          Image(systemName: "person.fill")
          Text("Профиль")
      }
    }
    .accentColor(.pink)
  }
}

#Preview {
  ContentView()
}
