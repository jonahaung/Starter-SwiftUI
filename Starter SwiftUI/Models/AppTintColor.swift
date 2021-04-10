//
//  AppTintColor.swift
//  Starter SwiftUI
//
//  Created by Aung Ko Min on 11/4/21.
//

import SwiftUI

enum AppTintColor: Int, CaseIterable, Identifiable {
    var id: AppTintColor { return self }
    
    
    case Blue, Red, Orange, Pink, Indigo, Teal, Green, Yellow
    
    var color: Color {
        switch self {
        case .Blue:
            return .blue
        case .Red:
            return .red
        case .Orange:
            return .orange
        case .Pink:
            return .pink
        case .Indigo:
            return Color(.systemIndigo)
        case .Teal:
            return Color(.systemTeal)
        case .Green:
            return .green
        case .Yellow:
            return .yellow
        }
    }
    
    var name: String {
        switch self {
        case .Blue:
            return "Default"
        case .Red:
            return "Red"
        case .Orange:
            return "Orange"
        case .Pink:
            return "Pink"
        case .Indigo:
            return "Indigo"
        case .Teal:
            return "Teal"
        case .Green:
            return "Green"
        case .Yellow:
            return "Yellow"
        }
    }
    
}
