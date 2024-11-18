//
//  UserListView.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

import SwiftUI

struct UserListView: View {
  // MARK: Internal Properties
  var body: some View {
    createListView()
  }
  
  // MARK: Private Properties
  private(set) var filteredUsers: [User]
  @Binding private(set) var searchText: String
  @Binding private(set) var selectedItem: DoctorSortCriterion
}

// MARK: - Private Extension
private extension UserListView {
  /// Создать ячейку
  func createCellView(user: User) -> some View {
    UserCellView(user: user)
      .padding()
      .background(HomeScreenConst.cellBackgroundColor)
      .cornerRadius(HomeScreenConst.cellCornerRadius)
      .shadow(radius: HomeScreenConst.cellShadowRadius)
      .listRowSeparator(.hidden)
  }
  
  /// Создать лист с ячейкой
  func createListView() -> some View {
    List(filteredUsers) { user in
      createCellView(user: user)
    }
    .searchable(
      text: $searchText,
      prompt: HomeScreenConst.getSearchBarPlaceholderText
    )
    .searchScopes($selectedItem) {
      ForEach(DoctorSortCriterion.allCases, id: \.self) { scope in
        Text(scope.title)
          .tag(scope)
      }
    }
    .listStyle(PlainListStyle())
    .navigationTitle(HomeScreenConst.getScreenTitleLabelText)
  }
}
