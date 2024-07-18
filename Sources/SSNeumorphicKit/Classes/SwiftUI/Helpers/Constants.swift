//
//  Constants.swift
//  SSNeumorphicKit
//
//  Created by Aayush Sarikhada on 17/07/24.
//

import SwiftUI

// MARK: - Constants
let neumorphicShadowOpacity: Float = 1
let neumorphicShadowRadius: CGFloat = 4
let neumorphicCornerRadius: CGFloat = 22
let layerDepthType: ShadowLayerType = .innerShadow
let elementDepth = 6

// MARK: - Colors
public enum Colors {
    
    private static let defaultMainColor = SSNeumorphicKit.uiColor(red: 0.933, green: 0.933, blue: 0.933)
    private static let defaultSecondaryColor = SSNeumorphicKit.uiColor(red: 0.482, green: 0.502, blue: 0.549)
    private static let defaultLightShadowSolidColor = SSNeumorphicKit.uiColor(red: 1.000, green: 1.000, blue: 1.000).withAlphaComponent(0.7)
    private static let defaultDarkShadowSolidColor = SSNeumorphicKit.uiColor(red: 0.820, green: 0.851, blue: 0.902)

    private static let darkThemeMainColor = SSNeumorphicKit.uiColor(red: 0.188, green: 0.192, blue: 0.208)
    private static let darkThemeSecondaryColor = SSNeumorphicKit.uiColor(red: 0.910, green: 0.910, blue: 0.910)
    private static let darkThemeLightShadowSolidColor = SSNeumorphicKit.uiColor(red: 0.243, green: 0.247, blue: 0.275)
    private static let darkThemeDarkShadowSolidColor = SSNeumorphicKit.uiColor(red: 0.137, green: 0.137, blue: 0.137)
    
}

// MARK: - Strings
public enum Strings {
    public static let emojis: [String] = ["😂", "😍", "😭", "😡", "👏", "🔥"]
    public static let messagePlaceholder: String = "Send something..."
}
