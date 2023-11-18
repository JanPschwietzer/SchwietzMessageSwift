//
//  SettingsOptionsViewModel.swift
//  SchwietzMessage
//
//  Created by Jan Schwietzer on 18.11.23.
//

import Foundation
import SwiftUI

enum SettingsOptionsViewModel: Int, CaseIterable, Identifiable {
    case darkMode
    case activeStatus
    case accessibility
    case privacy
    case notifications
    
    var title: String {
        switch self {
        case .darkMode:
            return "Dark Mode"
        case .activeStatus:
            return "Active Status"
        case .accessibility:
            return "Accessability"
        case .privacy:
            return "Privacy"
        case .notifications:
            return "Notifications"
        }
    }
    
    var image: String {
        switch self {
        case .darkMode:
            return "circle.lefthalf.filled"
        case .activeStatus:
            return "message.badge.circle.fill"
        case .accessibility:
            return "accessibility.fill"
        case .privacy:
            return "lock.circle.fill"
        case .notifications:
            return "bell.circle.fill"
        }
    }
    
    var color: Color {
        switch self {
        case .darkMode:
            return Color.black
        case .activeStatus:
            return Color.green
        case .accessibility:
            return Color.indigo
        case .privacy:
            return Color.blue
        case .notifications:
            return Color.purple
        }
    }
    
    var id: Int { return self.rawValue }
    
}
