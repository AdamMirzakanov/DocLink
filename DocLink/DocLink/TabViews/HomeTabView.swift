//
//  HomeTabView.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 14.11.2024.
//

import SwiftUI

struct HomeTabView: View {
  
  @State private var searchText = ""
  @State private var selectedItem: DoctorSortCriterion = .price
  
  var body: some View {
    NavigationStack {
      Picker("", selection: $selectedItem) {
        ForEach(DoctorSortCriterion.allCases) { category in
          Text(category.title).tag(category)
        }
      }
      .pickerStyle(.segmented)
      .padding([.leading, .trailing])
      
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

// MARK: - DoctorSortCriterion
private enum DoctorSortCriterion: String, CaseIterable, Identifiable {
  case price
  case experience
  case rating
  
  var id: Self {
    self
  }
  
  var title: String {
    switch self {
    case .price:
      return "По цене"
    case .experience:
      return "По стажу"
    case .rating:
      return "По рейтингу"
    }
  }
}
