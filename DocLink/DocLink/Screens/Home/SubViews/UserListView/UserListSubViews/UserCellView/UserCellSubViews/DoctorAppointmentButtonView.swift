//
//  DoctorAppointmentButtonView.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

import SwiftUI

/// Кнопка для записи к врачу.
///
/// Кнопка автоматически меняет внешний вид в зависимости от состояния доступности записи.
///
/// - Если запись доступна (`isAvailable == true`), кнопка
/// будет активной с розовым фоном и белым текстом.
///
/// - Если запись недоступна (`isAvailable == false`), кнопка
/// будет неактивной с серым фоном и чёрным текстом.
struct DoctorAppointmentButtonView: View {
  
  /// Указывает, доступна ли запись.
  var isAvailable: Bool
  
  var body: some View {
    Button(action: {
      // Выполняется только если запись доступна
      if isAvailable {
        print("Doctor appointment button tapped")
      }
    }) {
      Text(
        isAvailable ? HomeScreenConst.doctorAppointmentKey : HomeScreenConst.noFreeScheduleKeyKey
      )
        .font(.headline)
        .foregroundColor(isAvailable ? .white : .black) // чёрный текст для неактивной кнопки
        .frame(
          maxWidth: .infinity,
          minHeight: HomeScreenConst.doctorAppointmentButtonHeight
        )
        .background(
          isAvailable ? ColorConst.mainPink : HomeScreenConst.disabledButtonColor
        )
        .cornerRadius(HomeScreenConst.doctorAppointmentCornerRadius)
    }
    .disabled(!isAvailable) // отключитьо кнопку, если запись недоступна
    .buttonStyle(PlainButtonStyle())
  }
}