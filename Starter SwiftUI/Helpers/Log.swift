//
//  Log.swift
//  Starter SwiftUI
//
//  Created by Aung Ko Min on 16/4/21.
//

import Foundation
public func Log<T>(_ object: T?, filename: String = #file, line: Int = #line, funcname: String = #function) {
    #if DEBUG
        guard let object = object else { return }
        print("***** \(Date()) \(filename.components(separatedBy: "/").last ?? "") (line: \(line)) :: \(funcname) :: \(object)")
    #endif
}
