//
//  DoctorAppointmentButtonView.swift
//  DocLink
//
//  Created by Адам Мирзаканов on 15.11.2024.
//

import SwiftUI

/// Кнопка для записи к врачу.
///
/// Кнопка автоматически меняет внешний вид в зависимости от
/// состояния доступности записи.
///
/// - Если запись доступна (`isAvailable == true`), кнопка
/// будет активной с розовым фоном и белым текстом.
///
/// - Если запись недоступна (`isAvailable == false`), кнопка
/// будет неактивной с серым фоном и чёрным текстом.
struct DoctorAppointmentButtonView: View {
  // MARK: Internal Properties
  var body: some View {
    Button(action: {
      if isAvailable { // Выполняется только если запись доступна
        showModal.toggle()
      }
    }) {
      Text(
        isAvailable ?
        HomeScreenConst.getSoctorAppointmentLabelText : HomeScreenConst.getNoFreeScheduleLabelText
      )
      .font(.headline)
      .foregroundColor( // чёрный текст для неактивной кнопки
        isAvailable ? .white : HomeScreenConst.experienceTextColor
      )
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
    .sheet(isPresented: $showModal) {
      ReceptionScreenView()
    }
  }
  
  // MARK: Private Properties
  /// Указывает, доступна ли запись к врачу.
  private(set) var isAvailable: Bool
  @State private var showModal: Bool = false
}
