//
//  Icons.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

import SwiftUICore

enum Icon {
  static let homeIcon = Image(systemName: "house.fill")
  static let receptionIcon = Image(systemName: "list.clipboard")
  static let chatIcon = Image(systemName: "message")
  static let profileIcon = Image(systemName: "person.fill")
  static let likeIcon = Image(systemName: "heart")
  static let likedIcon = Image(systemName: "heart.fill")
  static let avatarPlaceholderIcon = Image(systemName: "person.crop.circle.fill")
  static let clockIcon = Image(systemName: "clock")
  static let caseIcon = Image(systemName: "cross.case")
  static let capIcon = Image(systemName: "graduationcap")
  static let pinIcon = Image(systemName: "mappin.and.ellipse")
  static let chevronIcon = Image(systemName: "chevron.forward")
  static let starIcon = Image(systemName: "star.fill")
  
  /// Этот шрифт отвечает за размер иконок которые
  /// в виде заполнителя отображаются на пустых экранах.
  static let placeholderIconFont: Font = .system(size: 150.0)
}
