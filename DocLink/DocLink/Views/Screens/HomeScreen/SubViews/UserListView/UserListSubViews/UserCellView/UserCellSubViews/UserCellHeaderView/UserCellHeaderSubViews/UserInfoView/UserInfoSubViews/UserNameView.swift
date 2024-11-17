//
//  UserNameView.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

import SwiftUI

struct UserNameView: View {
  // MARK: Internal Properties
  var body: some View {
    VStack(
      alignment: .leading,
      spacing: HomeScreenConst.verticalStackSpacing
    ) {
      Text(lastName)
      Text("\(firstName) \(patronymic)")
    }
    .font(HomeScreenConst.headerFont)
  }
  
  // MARK: Private Properties
  private(set) var lastName: String
  private(set) var firstName: String
  private(set) var patronymic: String
}
