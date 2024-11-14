//
//  User.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 14.11.2024.
//

struct User: Decodable, Identifiable {
  let id: String
  let firstName: String
  let patronymic: String
  let lastName: String
}
