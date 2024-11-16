//
//  UserListView.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

import SwiftUI

struct UserListView: View {
  var body: some View {
    List(filteredUsers) { user in
      UserCellView(user: user)
    }
    .searchable(
      text: $searchText,
      prompt: HomeScreenConst.searchBarPlaceholderKey
    )
  }
  
  var filteredUsers: [User]
  @Binding var searchText: String
}
