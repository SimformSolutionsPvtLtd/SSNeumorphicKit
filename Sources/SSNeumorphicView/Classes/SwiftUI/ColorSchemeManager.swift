//
//  ColorSchemeManager.swift
//  SSNeumorphicView
//
//  Created by Simform Solutions on 17/07/24.
//

import SwiftUI

/// A manager responsible for providing neumorphic colors based on the system theme.
public actor ColorSchemeManager {
    
    /// Enum representing different color scheme options.
    public enum SchemeType {
        case auto   // Automatically adjust to system theme
        case light  // Use light theme
        case dark   // Use dark theme
    }
    
    /// The current theme type which can be modified by the user.
    /// The default value is `.auto`, meaning it will follow the system theme.
    public static var schemeType : SchemeType = .auto
    
    /// Creates a `UIColor` from RGB values.
    /// - Parameters:
    ///   - red: The red component of the color, ranging from 0.0 to 1.0.
    ///   - green: The green component of the color, ranging from 0.0 to 1.0.
    ///   - blue: The blue component of the color, ranging from 0.0 to 1.0.
    /// - Returns: A `UIColor` object representing the color with the specified RGB values.
    public static func uiColor(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        .init(red: red, green: green, blue: blue, alpha: 1.0)
    }
    
    /// Provides a `Color` based on the current scheme type.
    /// - Parameters:
    ///   - light: The color to be used in light mode.
    ///   - dark: The color to be used in dark mode.
    /// - Returns: A `Color` object that adapts to the current color scheme (light, dark, or auto).
    public static func color(light: UIColor, dark: UIColor) -> Color {
        switch ColorSchemeManager.schemeType {
        case .light:
            return Color(light)
        case .dark:
            return Color(dark)
        case .auto:
            return Color(.init { $0.userInterfaceStyle == .light ? light : dark })
        }
    }
}
