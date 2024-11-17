//
//  SwiftUIView.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 17.11.2024.
//

import SwiftUI

struct PriceScreenView: View {
  // MARK: Internal Properties
  var body: some View {
    PriceScreenScrollView(user: user)
  }
  
  // MARK: Private Properties
  private(set) var user: User
}
