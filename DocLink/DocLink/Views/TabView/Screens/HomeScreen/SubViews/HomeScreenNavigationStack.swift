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
  @State private var users: [User] = []
}

// MARK: - Private Extension
private extension HomeScreenNavigationStack {
  // MARK: Properties
  var filteredUsers: [User] {
    let sortedUsers: [User]
    
    switch selectedItem {
    case .price:
      // Прайс по возрастанию
      sortedUsers = users.sorted { $0.textChatPrice < $1.textChatPrice }
    case .experience:
      // Стаж по убыванию
      sortedUsers = users.sorted { $0.seniority > $1.seniority }
    case .rating:
      // Рейтинг по убыванию
      sortedUsers = users.sorted { $0.ratingsRating > $1.ratingsRating }
    }
    
    // Фильтрация по тексту поиска
    if searchText.isEmpty {
      return sortedUsers
    } else {
      // Фильтровать список, оставляя тех чьи имя или фамилия содержат введенный текст
      return sortedUsers.filter {
        $0.firstName.contains(searchText) || $0.lastName.contains(searchText)
      }
    }
  }
  
  // MARK: Methods
  func createNavigationStack() -> some View {
    NavigationStack {
      UserListView(filteredUsers: filteredUsers, searchText: $searchText, selectedItem: $selectedItem)
    }
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
