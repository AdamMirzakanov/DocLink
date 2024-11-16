//
//  JSONDecoderService.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 14.11.2024.
//

import Foundation

func decode<T: Decodable>(from fileName: String, as type: T.Type) -> T? {
  guard
    let url = Bundle.main.url(forResource: fileName, withExtension: "json")
  else {
    return nil
  }
  
  do {
    let data = try Data(contentsOf: url)
    let decoder = JSONDecoder()
    decoder.keyDecodingStrategy = .convertFromSnakeCase
    return try decoder.decode(T.self, from: data)
  } catch {
    return nil
  }
}
