//
//  PriceScreenConst.swift
//  DocLink
//
//  Created by Adam on 17.11.2024.
//

import SwiftUICore

enum PriceScreenConst {
  static let horizontalPadding: CGFloat = 20.0
  static let priceViewHeight: CGFloat = 54.0
  static let priceViewCornerRadius: CGFloat = 8.0
  static let priceViewColor: Color = Color(white: 0.95)
  static let verticalStackSpacing: CGFloat = 20.0
  
  // Localizable Keys
  static let halfAnHourKey = PriceScreenLocalizableKey.halfAnHourKey.localizeString()
  static let videoConsultationKey = PriceScreenLocalizableKey.videoConsultationKey.localizeString()
  static let chatWithDoctorKey = PriceScreenLocalizableKey.chatWithDoctorKey.localizeString()
  static let admissionToTheClinicKey = PriceScreenLocalizableKey.admissionToTheClinicKey.localizeString()
  static let costOfServicesKey = PriceScreenLocalizableKey.costOfServicesKey.localizeString()
}

// MARK: - Localizable Keys
enum PriceScreenLocalizableKey: String, CaseIterable {
  case halfAnHourKey = "half_an_hour_key"
  case videoConsultationKey = "video_consultation_key"
  case chatWithDoctorKey = "chat_with_doctor_key"
  case admissionToTheClinicKey = "admission_to_the_clinic_key"
  case costOfServicesKey = "cost_of_services_key"
  
  func localizeString() -> String {
    NSLocalizedString(self.rawValue, comment: .empty )
  }
}
