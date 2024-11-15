//
//  ReceptionScreen.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 14.11.2024.
//

import SwiftUI

fileprivate typealias Const = ReceptionScreenConst

struct ReceptionScreen: View {
  // MARK: Internal Properties
  var body: some View {
    let screenTitle = Const.screenTitle 
    Text(screenTitle)
      .font(.largeTitle)
      .padding()
  }
}
