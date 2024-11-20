//
//  HomeScreenNavigationStack.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 18.11.2024.
//

import SwiftUI

struct HomeScreenNavigationStack: View {
  // MARK: Internal Properties
  var body: some View {
    createNavigationStack()
  }
  
  // MARK: Private Properties
  @State private var searchText: String = .empty
  @State private var selectedItem: DoctorSortCriterion = .price
  
  // MARK: Private Methods
  private func createNavigationStack() -> some View {
    NavigationStack {
      UserListView(
        searchText: $searchText,
        selectedItem: $selectedItem
      )
    }
  }
}
