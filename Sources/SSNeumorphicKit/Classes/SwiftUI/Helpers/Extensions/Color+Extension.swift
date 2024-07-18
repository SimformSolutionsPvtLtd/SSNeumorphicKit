//
//  Color+Extensino.swift
//  SSNeumorphicKit
//
//  Created by Aayush Sarikhada on 17/07/24.
//

import SwiftUI

public extension Color {

    struct Neumorphic {
        //Color
        private static let defaultMainColor = SSNeumorphicKit.uiColor(red: 0.925, green: 0.941, blue: 0.953)
        private static let defaultSecondaryColor = SSNeumorphicKit.uiColor(red: 0.482, green: 0.502, blue: 0.549)
        private static let defaultLightShadowSolidColor = SSNeumorphicKit.uiColor(red: 1.000, green: 1.000, blue: 1.000)
        private static let defaultDarkShadowSolidColor = SSNeumorphicKit.uiColor(red: 0.820, green: 0.851, blue: 0.902)

        private static let darkThemeMainColor = SSNeumorphicKit.uiColor(red: 0.188, green: 0.192, blue: 0.208)
        private static let darkThemeSecondaryColor = SSNeumorphicKit.uiColor(red: 0.910, green: 0.910, blue: 0.910)
        private static let darkThemeLightShadowSolidColor = SSNeumorphicKit.uiColor(red: 0.243, green: 0.247, blue: 0.275)
        private static let darkThemeDarkShadowSolidColor = SSNeumorphicKit.uiColor(red: 0.137, green: 0.137, blue: 0.137)
                
        public static var colorSchemeType : SSNeumorphicKit.ColorSchemeType {
            get {
                return SSNeumorphicKit.colorSchemeType
            }
            set {
                SSNeumorphicKit.colorSchemeType = newValue
            }
        }
        
        public static var main: Color {
            SSNeumorphicKit.color(light: defaultMainColor, dark: darkThemeMainColor)
        }
        
        public static var secondary: Color {
            SSNeumorphicKit.color(light: defaultSecondaryColor, dark: darkThemeSecondaryColor)
        }

        public static var lightShadow: Color {
            SSNeumorphicKit.color(light: defaultLightShadowSolidColor, dark: darkThemeLightShadowSolidColor)
        }

        public static var darkShadow: Color {
            SSNeumorphicKit.color(light: defaultDarkShadowSolidColor, dark: darkThemeDarkShadowSolidColor)
        }
    }
    

    
    
}
