//
//  HomeScreen.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 14.11.2024.
//

import SwiftUI

fileprivate typealias Const = HomeScreenConst

struct HomeScreen: View {
  // MARK: Internal Properties
  var body: some View {
    NavigationStack {
      Picker(String.empty, selection: $selectedItem) {
        ForEach(DoctorSortCriterion.allCases) { category in
          Text(category.title).tag(category)
        }
      }
      .pickerStyle(.segmented)
      .padding([.leading, .trailing], Const.horizontalPadding)
      
      List(filteredUsers) { user in
        HStack(alignment: .top) {
          
          VStack(alignment: .leading, spacing: Const.verticalSpacing) {
            
            VStack(alignment: .leading, spacing: Const.verticalSpacing) {
              Text(user.lastName)
              Text("\(user.firstName) \(user.patronymic)")
            }
            .font(Const.headerFont)
            
            VStack(alignment: .leading, spacing: Const.verticalSpacing) {
              if let specializationName = user.specialization?.first?.name {
                Text("\(specializationName)" + "∙стаж " + "\(user.seniority)" + " лет")
                  .foregroundColor(.secondary)
              }
              
              let price = NSNumber(value: user.textChatPrice)
              let formattedPrice = numberFormatter.string(from: price)
              let displayPrice = formattedPrice ?? .empty
              Text("от \(displayPrice)")
            }
            .font(Const.bodyFont)
          }
        }
      }
      .searchable(text: $searchText, prompt: "Поиск")
      .navigationTitle("Главная")
      .onAppear {
        loadUsers()
      }
    }
  }
  
  // MARK: Private Properties
  @State private var searchText: String = .empty
  @State private var selectedItem: DoctorSortCriterion = .price
  @State private var users: [User] = []
  
  private var filteredUsers: [User] {
    if searchText.isEmpty {
      return users
    } else {
      return users.filter {
        $0.firstName.contains(searchText) || $0.lastName.contains(searchText)
      }
    }
  }
  
  private let numberFormatter: NumberFormatter = {
    $0.numberStyle = .currency
    $0.locale = Locale(identifier: "ru_RU")
    return $0
  }(NumberFormatter())
  
  // MARK: Initializers
  init() {
    configurePickerAppearance()
  }
  
  // MARK: Private Methods
  private func loadUsers() {
    if let response: APIResponse = decode(from: "UsersData", as: APIResponse.self) {
      users = response.record.data.users
    }
  }
  
  private func configurePickerAppearance() {
    let pickerAppearance: UISegmentedControl = .appearance()
    pickerAppearance.selectedSegmentTintColor = Const.pink
    pickerAppearance.setTitleTextAttributes(
      [.foregroundColor: Const.white],
      for: .selected
    )
    pickerAppearance.setTitleTextAttributes(
      [.foregroundColor: Const.darkGray],
      for: .normal
    )
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
