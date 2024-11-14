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
      Picker("", selection: $selectedItem) {
        ForEach(DoctorSortCriterion.allCases) { category in
          Text(category.title).tag(category)
        }
      }
      .pickerStyle(.segmented)
      .padding([.leading, .trailing], 20)
      
      List(filteredUsers) { user in
        VStack(alignment: .leading) {
          VStack(alignment: .leading) {
            Text("\(user.lastName)")
            Text("\(user.firstName) \(user.patronymic)")
            
          }
          .font(.system(size: 17, weight: .medium))
          
          VStack(alignment: .leading) {
            
            if let specializationName = user.specialization.first??.name {
              Text("\(specializationName)∙стаж \(user.seniority) лет")
                .foregroundColor(.secondary)
            }
          }
          .font(.system(size: 16, weight: .regular))
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
  @State private var searchText = ""
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
    let white: UIColor = .white
    let darkGray: UIColor = .secondaryLabel
    let pink: UIColor = UIColor(r: 255.0, g: 83.0, b: 124.0, a: 1.0)
    
    let pickerAppearance: UISegmentedControl = .appearance()
    
    pickerAppearance.selectedSegmentTintColor = pink
    pickerAppearance.setTitleTextAttributes(
      [.foregroundColor: white],
      for: .selected
    )
    pickerAppearance.setTitleTextAttributes(
      [.foregroundColor: darkGray],
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

// MARK: - Color
extension Color {
  init(
    r: CGFloat,
    g: CGFloat,
    b: CGFloat,
    a: CGFloat
  ) {
    self.init(
      red: r / 255.0,
      green: g / 255.0,
      blue: b / 255.0,
      opacity: a
    )
  }
}

// MARK: - UIColor
extension UIColor {
  convenience init(
    r: CGFloat,
    g: CGFloat,
    b: CGFloat,
    a: CGFloat
  ) {
    self.init(
      red: r / 255.0,
      green: g / 255.0,
      blue: b / 255.0,
      alpha: a
    )
  }
}
