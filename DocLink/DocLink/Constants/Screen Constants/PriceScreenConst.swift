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
  static let priceViewColor: Color = Color(.quaternaryLabel)
  static let priceTextColor: Color = Color(.label)
  static let verticalStackSpacing: CGFloat = 20.0
  
  // Localizable Keys
  static var getHalfAnHourLabelText: String {
    Key.halfAnHourKey.localizeString()
  }
  
  static var getVideoConsultationLabelText: String {
    Key.videoConsultationKey.localizeString()
  }
  
  static var getChatWithDoctorLabelText: String {
    Key.chatWithDoctorKey.localizeString()
  }
  
  static var getAdmissionToTheClinicLabelText: String {
    Key.admissionToTheClinicKey.localizeString()
  }
  
  static var getCostOfServicesLabelText: String {
    Key.costOfServicesKey.localizeString()
  }
}

// MARK: - Localizable Keys
private enum Key: String, CaseIterable {
  case halfAnHourKey = "half_an_hour_key"
  case videoConsultationKey = "video_consultation_key"
  case chatWithDoctorKey = "chat_with_doctor_key"
  case admissionToTheClinicKey = "admission_to_the_clinic_key"
  case costOfServicesKey = "cost_of_services_key"
  
  func localizeString() -> String {
    NSLocalizedString(self.rawValue, comment: .empty )
  }
}
