//
//  UserListViewModel.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 22.11.2024.
//

import Foundation

final class UserListViewModel: ObservableObject {
  // MARK: Internal Properties
  var getUsers: Users { users }
  
  // MARK: Private Properties
  @Published private var searchText: String
  @Published private var selectedItem: DoctorSortCriterion
  @Published private var users: Users = []
  
  // MARK: Initializers
  init(
    searchText: String,
    selectedItem: DoctorSortCriterion
  ) {
    self.searchText = searchText
    self.selectedItem = selectedItem
    loadUsers()
  }
  
  // MARK: Private Methods
  private func loadUsers() {
    if let response = decode(
      from: HomeScreenConst.usersDataJSONFile,
      as: APIResponse.self
    ) {
      users = response.record.data.users
      applyFiltersAndSorting()
    }
  }
  
  private func applyFiltersAndSorting() {
    let sortedUsers = sortUsers(users: users, by: selectedItem)
    users = filterUsers(users: sortedUsers, by: searchText)
  }
  
  private func sortUsers(
    users: Users,
    by criteria: DoctorSortCriterion
  ) -> Users {
    switch criteria {
    case .price:
      return users.sorted { $0.textChatPrice < $1.textChatPrice }
    case .experience:
      return users.sorted { $0.seniority > $1.seniority }
    case .rating:
      return users.sorted { $0.ratingsRating > $1.ratingsRating }
    }
  }
  
  private func filterUsers(
    users: Users,
    by searchText: String
  ) -> Users {
    guard !searchText.isEmpty else {
      return users
    }
    return users.filter {
      $0.firstName.contains(searchText) || $0.lastName.contains(searchText)
    }
  }
}
