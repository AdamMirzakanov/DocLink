//
//  UserSpecializationView.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

import SwiftUI

struct UserSpecializationView: View {
  // MARK: Internal Properties
  var body: some View {
    createSpecializationView()
  }
  
  // MARK: Private Properties
  private(set) var specializationName: String?
  private(set) var seniority: Int
  
  // MARK: Private Methods
  private func createSpecializationView() -> some View {
    VStack(
      alignment: .leading,
      spacing: HomeScreenConst.verticalStackSpacing
    ) {
      if let specializationName = specializationName {
        let specializationText =
        specializationName +
        HomeScreenConst.getExperienceLabelText +
        String(seniority) +
        HomeScreenConst.getYearsLabelText
        Text(specializationText)
          .foregroundColor(HomeScreenConst.experienceTextColor)
      }
    }
  }
}
