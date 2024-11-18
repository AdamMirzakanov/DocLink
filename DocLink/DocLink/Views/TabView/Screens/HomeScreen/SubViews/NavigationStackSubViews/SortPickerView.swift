//
//  SortPickerView.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

import SwiftUI

struct SortPickerView: View {
  // MARK: Internal Properties
  var body: some View {
    createPickerView()
  }
  
  // MARK: Private Properties
  @Binding private(set) var selectedItem: DoctorSortCriterion
}

// MARK: - Private Extension
private extension SortPickerView {
  func createPickerView() -> some View {
    Picker(String.empty, selection: $selectedItem) {
      ForEach(DoctorSortCriterion.allCases) { category in
        Text(category.title).tag(category)
      }
    }
    .pickerStyle(.segmented)
    .padding(
      [.leading, .trailing],
      HomeScreenConst.marginsOnSides
    )
    .onAppear {
      configurePickerAppearance()
    }
  }
  
  /// Настраивает цвет текста сегмента для `UISegmentedControl`
  func configurePickerAppearance() {
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
