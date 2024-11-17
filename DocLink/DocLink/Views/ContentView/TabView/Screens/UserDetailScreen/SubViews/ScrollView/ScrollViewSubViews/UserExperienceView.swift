//
//  UserExperienceView.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 16.11.2024.
//

import SwiftUI

struct UserExperienceView: View {
  // MARK: Internal Properties
  let user: User
  var body: some View {
    HStack {
      createIconColumn()
      createDetailsColumn(for: user)
    }
  }
}

// MARK: - Private Extension
private extension UserExperienceView {
  // Иконки, отдельно
  func createIconColumn() -> some View {
    VStack(
      alignment: .center,
      spacing: UserDetailScreenConst.verticalStackSpacing
    ) {
      Group {
        Icon.clockIcon
        Icon.caseIcon
        Icon.capIcon
        Icon.pinIcon
      }
      .frame(height: UserDetailScreenConst.iconHeightSize)
    }
    .font(UserDetailScreenConst.iconFont)
    .foregroundColor(UserDetailScreenConst.iconColor)
  }
  
  // Информация напротив иконок
  func createDetailsColumn(for user: User) -> some View {
    VStack(
      alignment: .leading,
      spacing: UserDetailScreenConst.verticalStackSpacing
    ) {
      Group {
        createWorkExperienceText(for: user)
        createSpecializationText(for: user)
        createEducationText(for: user)
        createOrganizationText(for: user)
      }
      .font(UserDetailScreenConst.mainFont)
      .frame(height: UserDetailScreenConst.iconHeightSize)
      .foregroundColor(.secondary)
    }
  }
  
  // Tекст об опыте работы
  func createWorkExperienceText(for user: User) -> some View {
    Text(
      UserDetailScreenConst.getWorkExperienceLabelText +
      String(user.seniority) +
      UserDetailScreenConst.getYearsLabelText
    )
  }
  
  // Tекст о специализации
  func createSpecializationText(for user: User) -> some View {
    if let specializationName = user.specialization?.first?.name {
      return Text(specializationName)
    } else {
      return Text(String.empty)
    }
  }
  
  // Tекст об образовании
  func createEducationText(for user: User) -> some View {
    Text(user.educationTypeLabel.name)
  }
  
  // Tекст об организации
  func createOrganizationText(for user: User) -> some View {
    if let organization = user.workExpirience.first?.organization {
      return Text(organization)
    } else {
      return Text(String.empty)
    }
  }
}
