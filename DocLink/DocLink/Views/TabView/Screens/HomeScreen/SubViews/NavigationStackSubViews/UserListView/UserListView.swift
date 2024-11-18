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
}

// MARK: - Private Extension
private extension UserListView {
  func createCellView(user: User) -> some View {
    UserCellView(user: user)
      .padding()
      .background(HomeScreenConst.cellBackgroundColor)
      .cornerRadius(HomeScreenConst.cellCornerRadius)
      .shadow(radius: HomeScreenConst.cellShadowRadius)
      .listRowSeparator(.hidden)
  }
  
  func createListView() -> some View {
    List(filteredUsers) { user in
      createCellView(user: user)
    }
    .searchable(
      text: $searchText,
      prompt: HomeScreenConst.getSearchBarPlaceholderText
    )
    .listStyle(PlainListStyle())
  }
}
