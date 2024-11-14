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
          Image(systemName: "house.fill")
          Text("Главная")
        }
      ReceptionScreen()
        .tabItem {
          Image(systemName: "list.clipboard")
          Text("Приемы")
        }
      ChatScreen()
        .tabItem {
          Image(systemName: "message")
          Text("Чат")
        }
      ProfileScreen()
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
