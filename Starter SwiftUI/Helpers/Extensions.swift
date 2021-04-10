//
//  Extensions.swift
//  Starter SwiftUI
//
//  Created by Aung Ko Min on 11/4/21.
//

import UIKit

extension UIApplication {
    
    class func getRootViewController() -> UIViewController? {
        var rootVC: UIViewController? = nil
        for scene in UIApplication.shared.connectedScenes {
            if scene.activationState == .foregroundActive {
                rootVC = ((scene as? UIWindowScene)!.delegate as! UIWindowSceneDelegate).window!!.rootViewController
                break
            }
        }
        return rootVC
    }
    
    class func getTopViewController(base: UIViewController? = UIApplication.getRootViewController()) -> UIViewController? {
        
        if let nav = base as? UINavigationController {
            return getTopViewController(base: nav.visibleViewController)
            
        } else if let tab = base as? UITabBarController, let selected = tab.selectedViewController {
            return getTopViewController(base: selected)
            
        } else if let presented = base?.presentedViewController {
            return getTopViewController(base: presented)
        }
        return base
    }
}

extension Bundle {
    var version: String? {
        return self.infoDictionary?["CFBundleShortVersionString"] as? String
    }
}
