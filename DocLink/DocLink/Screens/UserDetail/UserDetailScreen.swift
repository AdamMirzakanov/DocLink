//
//  UserDetailScreen.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

import SwiftUI

struct UserDetailScreen: View {
  let user: User
  var body: some View {
    Text(user.firstName)
  }
}
