//
//  Color+Extension.swift
//  SSNeumorphicView
//
//  Created by Simform Solutions on 17/07/24.
//

import SwiftUI

public extension Color {
    
    /// Extension for Neumorphic Colors
    /// A struct providing neumorphic colors based on the current color scheme.
    struct Neumorphic {
        
        // Default colors for light mode
        private static let defaultMainColor = ColorSchemeManager.uiColor(red: 0.925, green: 0.941, blue: 0.953)
        private static let defaultLightShadowSolidColor = ColorSchemeManager.uiColor(red: 1.000, green: 1.000, blue: 1.000)
        private static let defaultDarkShadowSolidColor = ColorSchemeManager.uiColor(red: 0.820, green: 0.851, blue: 0.902)

        // Default colors for dark mode
        private static let darkThemeMainColor = ColorSchemeManager.uiColor(red: 0.188, green: 0.192, blue: 0.208)
        private static let darkThemeLightShadowSolidColor = ColorSchemeManager.uiColor(red: 0.243, green: 0.247, blue: 0.275)
        private static let darkThemeDarkShadowSolidColor = ColorSchemeManager.uiColor(red: 0.137, green: 0.137, blue: 0.137)
                
        /// The current color scheme type used to determine which colors to apply.
        public static var colorSchemeType : ColorSchemeManager.SchemeType {
            get {
                return ColorSchemeManager.schemeType
            }
            set {
                ColorSchemeManager.schemeType = newValue
            }
        }
        
        /// The main neumorphic color, adapting to the current color scheme.
        public static var main: Color {
            ColorSchemeManager.color(light: defaultMainColor, dark: darkThemeMainColor)
        }
        
        /// The light shadow color used in neumorphic design, adapting to the current color scheme.
        public static var lightShadow: Color {
            ColorSchemeManager.color(light: defaultLightShadowSolidColor, dark: darkThemeLightShadowSolidColor)
        }

        /// The dark shadow color used in neumorphic design, adapting to the current color scheme.
        public static var darkShadow: Color {
            ColorSchemeManager.color(light: defaultDarkShadowSolidColor, dark: darkThemeDarkShadowSolidColor)
        }
    }

    /// Extension function to mix two colors together.
    /// - Parameters:
    ///   - color: Color to be mixed with main color.
    ///   - percentage: Percentage of second color two be mixed.
    /// - Returns: A mixture of both colors.
    @available(iOS 14.0, *)
    func mix(with color: Color, by percentage: Double) -> Color {
        let clampedPercentage = min(max(percentage, 0), 1)
        
        let components1 = UIColor(self).cgColor.components!
        let components2 = UIColor(color).cgColor.components!
        
        let red = (1.0 - clampedPercentage) * components1[0] + clampedPercentage * components2[0]
        let green = (1.0 - clampedPercentage) * components1[1] + clampedPercentage * components2[1]
        let blue = (1.0 - clampedPercentage) * components1[2] + clampedPercentage * components2[2]
        let alpha = (1.0 - clampedPercentage) * components1[3] + clampedPercentage * components2[3]
        
        return Color(red: red, green: green, blue: blue, opacity: alpha)
    }
}
