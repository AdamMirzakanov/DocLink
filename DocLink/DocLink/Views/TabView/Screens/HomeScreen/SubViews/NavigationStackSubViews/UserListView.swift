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
  @ObservedObject private var viewModel: UserListViewModel
  @Binding private var searchText: String
  @Binding private var selectedItem: DoctorSortCriterion
  
  // MARK: Initializers
  init(
    searchText: Binding<String>,
    selectedItem: Binding<DoctorSortCriterion>
  ) {
    _searchText = searchText
    _selectedItem = selectedItem
    _viewModel = ObservedObject(
      wrappedValue: UserListViewModel(
        searchText: searchText.wrappedValue,
        selectedItem: selectedItem.wrappedValue
      )
    )
  }
  
  // MARK: Private Methods
  func createCellView(user: User) -> some View {
    UserCellView(user: user)
      .padding()
      .background(HomeScreenConst.cellBackgroundColor)
      .cornerRadius(HomeScreenConst.cellCornerRadius)
      .listRowSeparator(.hidden)
      .listRowBackground(HomeScreenConst.listBackgroundColor)
  }
  
  func createListView() -> some View {
    List(viewModel.users) { user in
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
  }
}
