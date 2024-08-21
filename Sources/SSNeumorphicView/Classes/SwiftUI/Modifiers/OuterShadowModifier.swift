//
//  OuterShadowModifier.swift
//  SSNeumorphicView
//
//  Created by Simform Solutions on 17/07/24.
//

import SwiftUI

/// Custom modifier to add outer shadow to a View.
public struct OuterShadowModifier: ViewModifier {
    
    // MARK: - Variables
    
    /// The color of the dark shadow.
    var shadowColorDark: Color
    
    /// The color of the light shadow.
    var shadowColorLight: Color
    
    /// The blur radius of the shadow.
    var radius: CGFloat
    
    /// The offset of the dark shadow.
    var darkShadowOffset: CGFloat
    
    /// The offset of the light shadow.
    var lightShadowOffset: CGFloat
    
    // MARK: - Initializers
    
    /// Creates an `OuterShadowModifier` with specified parameters.
    /// - Parameters:
    ///   - shadowColorDark: The color of the dark shadow.
    ///   - shadowColorLight: The color of the light shadow.
    ///   - radius: The blur radius of the shadow.
    ///   - darkShadowOffset: The offset of the dark shadow.
    ///   - lightShadowOffset: The offset of the light shadow.
    init(shadowColorDark: Color,
         shadowColorLight: Color,
         radius: CGFloat,
         darkShadowOffset: CGFloat,
         lightShadowOffset: CGFloat) {
        self.shadowColorDark = shadowColorDark
        self.shadowColorLight = shadowColorLight
        self.radius = radius
        self.darkShadowOffset = darkShadowOffset
        self.lightShadowOffset = lightShadowOffset
    }
    
    // MARK: - Modifier Body
    
    /// Applies the outer shadow effect to the content view.
    /// - Parameter content: The view to which the modifier is applied.
    /// - Returns: The view with the outer shadow effect.
    public func body(content: Content) -> some View {
        content
            .shadow(color: shadowColorDark, radius: radius, x: darkShadowOffset, y: darkShadowOffset)
            .shadow(color: shadowColorLight, radius: radius, x: -lightShadowOffset, y: -lightShadowOffset)
    }
}
