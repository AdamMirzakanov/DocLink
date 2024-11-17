//
//  DoctorSortCriterion.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

/// Перечисление критериев сортировки для врачей.
///
/// Содержит доступные параметры для сортировки списка врачей и предоставляет
/// вспомогательные свойства для идентификации и отображения.
///
/// - Cases:
///   - `price`: Сортировка по цене.
///   - `experience`: Сортировка по опыту.
///   - `rating`: Сортировка по рейтингу.
///
/// - Conforms to:
///   - `CaseIterable`: Для получения списка всех возможных значений перечисления.
///   - `Identifiable`: Для обеспечения уникального идентификатора каждого значения.
///
/// - Properties:
///   - `id`: Уникальный идентификатор для каждого критерия сортировки.
///   (каждое значение перечисления становится своим уникальным идентификатором)
///   - `title`: Локализованное название для отображения в пользовательском интерфейсе.
///   Возвращается текст, заданный в константах `HomeScreenConst` в зависимости от выбранного критерия.
enum DoctorSortCriterion: String, CaseIterable, Identifiable {
  case price
  case experience
  case rating
  
  var id: Self {
    self
  }
  
  var title: String {
    switch self {
    case .price:
      return HomeScreenConst.getPickerPriceTitleLabelText
    case .experience:
      return HomeScreenConst.getPickerExperienceTitleLabelText
    case .rating:
      return HomeScreenConst.getPickerRatingTitleLabelText
    }
  }
}
