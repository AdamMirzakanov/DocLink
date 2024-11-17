//
//  UserListView.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

import SwiftUI

struct UserListView: View {
  var filteredUsers: [User]
  @Binding var searchText: String
  
  var body: some View {
    List(filteredUsers) { user in
      UserCellView(user: user)
        .padding()
        .background(HomeScreenConst.cellBackgroundColor)
        .cornerRadius(HomeScreenConst.cellCornerRadius)
        .shadow(radius: HomeScreenConst.cellShadowRadius)
        .listRowSeparator(.hidden)
    }
    .searchable(
      text: $searchText,
      prompt: HomeScreenConst.searchBarPlaceholderKey
    )
    .listStyle(PlainListStyle())
  }
}
