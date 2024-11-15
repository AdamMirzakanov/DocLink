//
//  ReceptionScreen.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 14.11.2024.
//

import SwiftUI

fileprivate typealias LocalKey = ReceptionScreenLocalizableKey

struct ReceptionScreen: View {
  // MARK: Internal Properties
  var body: some View {
    let screenTitle = LocalKey.screenTitle.localizeString()
    Text(screenTitle)
      .font(.largeTitle)
      .padding()
  }
}