//
//  HomeScreen.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 14.11.2024.
//

import SwiftUI

struct HomeScreen: View {
  // MARK: Internal Properties
  var body: some View {
    NavigationStack {
      VStack {
        SortPickerView(selectedItem: $selectedItem)
        UserListView(filteredUsers: filteredUsers, searchText: $searchText)
      }
      .navigationTitle(HomeScreenConst.screenTitleKey)
      .onAppear {
        configurePickerAppearance()
        loadUsers()
      }
    }
  }
  
  private var filteredUsers: [User] {
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
    
    // фильтрация по тексту поиска
    if searchText.isEmpty {
      return sortedUsers
    } else {
      // фильтровать список, оставляя пользователей,
      // чьи имя или фамилия содержат введенный текст
      return sortedUsers.filter {
        $0.firstName.contains(searchText) || $0.lastName.contains(searchText)
      }
    }
  }
  
  
  // MARK: Private Properties
  @State private var searchText: String = .empty
  @State private var selectedItem: DoctorSortCriterion = .price
  @State private var users: [User] = []
  
  // MARK: Private Methods
  private func loadUsers() {
    if let response = decode(
      from: HomeScreenConst.usersDataFile,
      as: APIResponse.self
    ) {
      users = response.record.data.users
    }
  }
  
  private func configurePickerAppearance() {
    let pickerAppearance: UISegmentedControl = .appearance()
    pickerAppearance.selectedSegmentTintColor = ColorConst.pickerPink
    pickerAppearance.setTitleTextAttributes(
      [.foregroundColor: HomeScreenConst.selectedSegmentTextColor],
      for: .selected
    )
    pickerAppearance.setTitleTextAttributes(
      [.foregroundColor: HomeScreenConst.unselectedSegmentTextColor],
      for: .normal
    )
  }
}
