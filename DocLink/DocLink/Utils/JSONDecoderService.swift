//
//  JSONDecoderService.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 14.11.2024.
//

import Foundation

/// Декодирует объект из JSON-файла, находящегося в основном бандле.
///
/// Этот метод используется для преобразования содержимого JSON-файла в объект указанного типа.
///
/// - Parameters:
///   - fileName: Имя JSON-файла (без расширения), который должен быть декодирован.
///   - type: Тип объекта, который необходимо получить в результате декодирования.
///   Должен соответствовать протоколу `Decodable`.
///
/// - Returns:
/// Объект указанного типа `T`, если декодирование прошло успешно,
/// в противном случае возвращает `nil`.
///
/// - Note:
///   - Метод ищет файл в основном бандле приложения.
///   - Если файл не найден или происходит ошибка при чтении или декодировании, возвращается `nil`.
///   - Используется стратегия преобразования ключей `snake_case` в `camelCase`,
///   заданная через `JSONDecoder`.
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
