//
//  LinearGradient+Extension.swift
//  SSNeumorphicView
//
//  Created by Simform Solutions on 30/07/24.
//
import SwiftUI

public extension LinearGradient {
    
    /// Custom initializer for  ``LinearGradient``.
    /// - Parameter colors: Variable number of colors for Linear gradient.
    init(_ colors: Color...) {
        self.init(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}
