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
  @Binding private(set) var searchText: String
  @Binding private(set) var selectedItem: DoctorSortCriterion
  @State private var users: Users = []
}

// MARK: - Private Extension
private extension UserListView {
  // MARK: Properties
  var filteredUsers: Users {
    let sortedUsers = sortUsers(users: users, by: selectedItem)
    let filteredUsers = filterUsers(users: sortedUsers, by: searchText)
    return filteredUsers
  }
  
  // MARK: Methods
  func sortUsers(users: Users, by criteria: DoctorSortCriterion) -> Users {
    switch criteria {
    case .price:
      // Прайс по возрастанию
      return users.sorted { $0.textChatPrice < $1.textChatPrice }
    case .experience:
      // Стаж по убыванию
      return users.sorted { $0.seniority > $1.seniority }
    case .rating:
      // Рейтинг по убыванию
      return users.sorted { $0.ratingsRating > $1.ratingsRating }
    }
  }
  
  func filterUsers(users: Users, by searchText: String) -> Users {
    guard !searchText.isEmpty else {
      return users
    }
    return users.filter {
      $0.firstName.contains(searchText) || $0.lastName.contains(searchText)
    }
  }
  
  /// Создать ячейку
  func createCellView(user: User) -> some View {
    UserCellView(user: user)
      .padding()
      .background(HomeScreenConst.cellBackgroundColor)
      .cornerRadius(HomeScreenConst.cellCornerRadius)
      .listRowSeparator(.hidden)
      .listRowBackground(HomeScreenConst.listBackgroundColor)
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
      ForEach(DoctorSortCriterion.allCases, id: \.self) { criteria in
        Text(criteria.title)
          .tag(criteria)
      }
    }
    .listStyle(PlainListStyle())
    .navigationTitle(HomeScreenConst.getScreenTitleLabelText)
    .onAppear {
      loadUsers()
    }
  }
  
  /// Загружает данные пользователей из JSON-файла.
  func loadUsers() {
    if let response = decode(
      from: HomeScreenConst.usersDataJSONFile,
      as: APIResponse.self
    ) {
      users = response.record.data.users
    }
  }
}
