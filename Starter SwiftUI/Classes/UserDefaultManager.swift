//
//  UserDefaultManager.swift
//  Starter SwiftUI
//
//  Created by Aung Ko Min on 11/4/21.
//

import Foundation

final class UserDefaultManager {
    
    static let shared = UserDefaultManager()
    private let manager = UserDefaults.standard
    
    let _hasShownOnboarding = "hasShownOnboarding"
    let _appFont = "appFont"
    let _appTintColor = "appTintColor"
    let _doneSetup = "doneSetup"

    var hasShownOnboarding: Bool {
        get { return manager.bool(forKey: _hasShownOnboarding) }
        set { manager.setValue(newValue, forKey: _hasShownOnboarding) }
    }
    
    var doneSetup: Bool {
        get { return manager.bool(forKey: _doneSetup) }
        set { manager.setValue(newValue, forKey: _doneSetup) }
    }
    
    var appFont: AppFont {
        get {
            return AppFont(rawValue: manager.integer(forKey: _appFont)) ?? .rounded
        }
        set {
            manager.setValue(newValue.rawValue, forKey: _appFont)
        }
    }
    var appTintColor: AppTintColor {
        get {
            return AppTintColor(rawValue: manager.integer(forKey: _appTintColor)) ?? .Blue
        }
        set {
            manager.setValue(newValue.rawValue, forKey: _appTintColor)
        }
    }
}
