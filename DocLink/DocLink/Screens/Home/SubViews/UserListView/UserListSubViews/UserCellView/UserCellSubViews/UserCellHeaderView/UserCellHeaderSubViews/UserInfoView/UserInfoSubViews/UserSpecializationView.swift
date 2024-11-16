//
//  UserSpecializationView.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

import SwiftUI

struct UserSpecializationView: View {
  var body: some View {
    VStack(
      alignment: .leading,
      spacing: HomeScreenConst.verticalStackSpacing
    ) {
      if let specializationName = specializationName {
        let specializationText =
        specializationName +
        HomeScreenConst.experienceLabelKey +
        String(seniority) +
        HomeScreenConst.yearsLabelKey
        Text(specializationText)
          .foregroundColor(.secondary)
      }
    }
  }
  
  var specializationName: String?
  var seniority: Int
}
