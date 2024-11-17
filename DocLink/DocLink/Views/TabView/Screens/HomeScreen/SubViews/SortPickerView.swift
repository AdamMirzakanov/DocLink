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
  }
  
  // MARK: Private Properties
  @Binding private(set) var selectedItem: DoctorSortCriterion
}
