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
  let specialization: [Specialization]
  let seniority: Int
  let textChatPrice: Int
  let videoChatPrice: Int
  let homePrice: Int
  let hospitalPrice: Int
  let avatar: String?
  let freeReceptionTime: [FreeReceptionTime]
  let educationTypeLabel: Education
  let workExpirience: [Work]
  let proceduresDescription: String
  let ratingsRating: Double
}
