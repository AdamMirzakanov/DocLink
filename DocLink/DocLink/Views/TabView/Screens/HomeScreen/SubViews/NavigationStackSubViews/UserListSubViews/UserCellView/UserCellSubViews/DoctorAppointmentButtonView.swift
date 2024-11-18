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
struct DoctorAppointmentButtonView: View {
  // MARK: Internal Properties
  var body: some View {
    createAppointmentButton()
  }
  
  // MARK: Private Properties
  /// Указывает, доступна ли запись к врачу.
  ///
  /// - Если запись доступна (`isAvailable == true`), кнопка
  /// будет активной с розовым фоном и белым текстом.
  ///
  /// - Если запись недоступна (`isAvailable == false`), кнопка
  /// будет неактивной с серым фоном и чёрным текстом.
  private(set) var isAvailable: Bool
  @State private var showModal: Bool = false
}

// MARK: - Private Extension
private extension DoctorAppointmentButtonView {
  func createAppointmentButton() -> some View {
    configAppointmentButton()
      .disabled(!isAvailable)
      .buttonStyle(PlainButtonStyle())
      .sheet(isPresented: $showModal) {
        ReceptionScreenView()
      }
  }
  
  func configAppointmentButton() -> some View {
    Button(action: {
      handleButtonTap()
    }) {
      createButtonLabel()
        .frame(
          maxWidth: .infinity,
          minHeight: HomeScreenConst.doctorAppointmentButtonHeight
        )
        .background(buttonBackgroundColor())
        .cornerRadius(HomeScreenConst.doctorAppointmentCornerRadius)
    }
  }
  
  /// действие кнопки
  func handleButtonTap() {
    if isAvailable {
      showModal.toggle()
    }
  }
  
  /// текст на кнопке в зависимости от доступности записи
  func createButtonLabel() -> some View {
    Text(
      isAvailable ?
      HomeScreenConst.getSoctorAppointmentLabelText : HomeScreenConst.getNoFreeScheduleLabelText
    )
    .font(.headline)
    .foregroundColor(buttonTextColor())
  }
  
  /// цвета текста кнопки в зависимости от доступности записи
  func buttonTextColor() -> Color {
    return isAvailable ? .white : HomeScreenConst.experienceTextColor
  }
  
  /// фон кнопки в зависимости от доступности записи
  func buttonBackgroundColor() -> Color {
    return isAvailable ? ColorConst.mainPink : HomeScreenConst.disabledButtonColor
  }
}
