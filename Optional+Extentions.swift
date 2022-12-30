//
//  Optional+Extentions.swift
//  
//
//  Created by Akshay on 30/12/22.
//

import Foundation

// Wrapper for String which can be used to avoid nil coalescing.
extension Optional where Wrapped == String {
    var orEmpty: String {
        switch self {
        case .some(let value): return value
        case .none: return ""
        }
    }
    
    // Wrapper for Int which can be used to avoid nil coalescing.
    var orZero: Int {
        switch self {
        case .some(let value): return value
        case .none: return 0
        }
    }
}
