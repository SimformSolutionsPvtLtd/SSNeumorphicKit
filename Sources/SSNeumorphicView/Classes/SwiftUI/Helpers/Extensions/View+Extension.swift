//
//  View+Extension.swift
//  SSNeumorphicView
//
//  Created by Simform Solutions on 18/07/24.
//
import SwiftUI

extension View {
    
    /// Adds an inner shadow effect to the view.
    /// - Parameters:
    ///   - shape: The shape to be used for the inner shadow effect.
    ///   - darkShadow: The color of the dark shadow for the top leading area (default is `Color.Neumorphic.darkShadow`).
    ///   - lightShadow: The color of the light shadow for the bottom trailing area (default is `Color.Neumorphic.lightShadow`).
    ///   - offset: The offset of the shadows. This offset will be applied to both shadows (default is `2`).
    ///   - radius: The blur radius for the shadows. A lower radius gives a sharper shadow, while a higher radius provides a smoother shadow (default is `2`).
    /// - Returns: A view with the applied inner shadow effect.
    public func innerShadow<S: Shape>(
        _ shape: S,
        darkShadow: Color = Color.Neumorphic.darkShadow,
        lightShadow: Color = Color.Neumorphic.lightShadow,
        offset: CGFloat = 2,
        radius: CGFloat = 2
    ) -> some View {
        modifier(InnerShadowModifier(shape: shape,
                                     shadowColorDark: darkShadow,
                                     shadowColorLight: lightShadow,
                                     radius: radius,
                                     offset: offset))
    }
    
    /// Adds an outer shadow effect to the view.
    /// - Parameters:
    ///   - darkShadow: The color of the dark shadow for the top leading area (default is `Color.Neumorphic.darkShadow`).
    ///   - lightShadow: The color of the light shadow for the bottom trailing area (default is `Color.Neumorphic.lightShadow`).
    ///   - lightShadowOffset: The offset of the outer light shadow (default is `5`).
    ///   - darkShadowOffset: The offset of the outer dark shadow (default is `10`).
    ///   - radius: The blur radius for the shadows (default is `10`).
    /// - Returns: A view with the applied outer shadow effect.
    public func outerShadow(
        darkShadow: Color = Color.Neumorphic.darkShadow,
        lightShadow: Color = Color.Neumorphic.lightShadow,
        lightShadowOffset: CGFloat = 5,
        darkShadowOffset: CGFloat = 10,
        radius:CGFloat = 10
    ) -> some View {
        modifier(OuterShadowModifier(shadowColorDark: darkShadow,
                                     shadowColorLight: lightShadow,
                                     radius: radius,
                                     darkShadowOffset: darkShadowOffset,
                                     lightShadowOffset: lightShadowOffset))
    }
}
