//
//  Starter_SwiftUIApp.swift
//  Starter SwiftUI
//
//  Created by Aung Ko Min on 11/4/21.
//

import SwiftUI

@main
struct Starter_SwiftUIApp: App {
    
    @AppStorage(UserDefaultManager.shared._appFontDesign) private var appFontDesign: Int = UserDefaultManager.shared.appFontDesign.rawValue
    @AppStorage(UserDefaultManager.shared._appFontSize) private var appFontSize: Double = UserDefaultManager.shared.appFontSize
    @AppStorage(UserDefaultManager.shared._appTintColor) private var appTintColor: Int = UserDefaultManager.shared.appTintColor.rawValue
    @AppStorage(UserDefaultManager.shared._hasShownOnboarding) private var hasShownOnboarding: Bool = UserDefaultManager.shared.hasShownOnboarding
    
    @Environment(\.scenePhase) private var scenePhase
    
    private let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                if hasShownOnboarding {
                    ContentView()
                }else {
                    OnboardingView(isFirstTime: true)
                }
            }
            .environment(\.managedObjectContext, persistenceController.container.viewContext)
            .font(.system(size: CGFloat(appFontSize), design: AppFontDesign(rawValue: appFontDesign)!.design))
            .accentColor(AppTintColor(rawValue: appTintColor)?.color)
        }
        .onChange(of: scenePhase, perform: handleScenePhase(_:))
    }
}

extension Starter_SwiftUIApp {
    private func handleScenePhase(_ phase: ScenePhase) {
        switch phase {
        case .active:
            print("active")
        case .inactive:
            print("inactive")
        case .background:
            print("background")
        @unknown default:
            print("unknown")
        }
    }
}
