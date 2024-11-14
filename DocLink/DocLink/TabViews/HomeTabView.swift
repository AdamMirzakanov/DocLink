//
//  HomeTabView.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 14.11.2024.
//

import SwiftUI

struct HomeTabView: View {
  
  @State private var searchText = ""
  
  var body: some View {
    NavigationView {
      List {
        Text("1")
        Text("2")
        Text("3")
      }
      .searchable(text: $searchText, prompt: "Поиск")
      .navigationTitle("Главная")
    }
  }
}

