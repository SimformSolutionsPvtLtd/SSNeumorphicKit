//
//  SSNeumorphicKit.swift
//  SSNeumorphicKit
//
//  Created by Aayush Sarikhada on 17/07/24.
//

import SwiftUI

public struct ColorScheme {
    
    public enum SchemeType {
        case auto, light, dark
    }

    public static var schemeType : SchemeType = .auto

    public static func uiColor(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        .init(red: red, green: green, blue: blue, alpha: 1.0)
    }
    
    public static func color(light: UIColor, dark: UIColor) -> Color {
        switch ColorScheme.schemeType {
        case .light:
            return Color(light)
        case .dark:
            return Color(dark)
        case .auto:
            return Color(.init { $0.userInterfaceStyle == .light ? light : dark })
        }
    }

}




