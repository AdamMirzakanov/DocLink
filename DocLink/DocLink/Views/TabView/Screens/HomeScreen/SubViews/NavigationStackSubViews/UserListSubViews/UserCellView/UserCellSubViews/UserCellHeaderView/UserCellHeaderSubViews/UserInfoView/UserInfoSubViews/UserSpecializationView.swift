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
        Text(getSpecializationText())
          .foregroundColor(HomeScreenConst.experienceTextColor)
    }
  }
  
  private func getSpecializationText() -> String {
    guard let specializationName = specializationName else {
      return .empty
    }
    let specializationText =
    specializationName +
    HomeScreenConst.getExperienceLabelText +
    String(seniority) +
    HomeScreenConst.getYearsLabelText
    
    return specializationText
  }
}
