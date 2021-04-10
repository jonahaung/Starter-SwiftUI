//
//  FontDesign.swift
//  Starter SwiftUI
//
//  Created by Aung Ko Min on 11/4/21.
//

import SwiftUI

enum AppFont: Int, CaseIterable, Identifiable {
    
    var id: AppFont { return self }
    
    case rounded, monoSpaced, serif
    
    var font: Font {
        return .system(.body, design: design)
    }
    
    var design: Font.Design {
        switch self {
        case .rounded:
            return .rounded
        case .monoSpaced:
            return .monospaced
        case .serif:
            return .serif
        }
    }
    
    var name: String {
        switch self {
        case .monoSpaced:
            return "Monospaced"
        case .serif:
            return "Serif"
        case .rounded:
            return "Rounded"
        }
    }
}
