//
//  UserNameView.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

import SwiftUI

struct UserNameView: View {
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
  
  var lastName: String
  var firstName: String
  var patronymic: String
}
