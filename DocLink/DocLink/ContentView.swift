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
    }
  }
}

#Preview {
  ContentView()
}