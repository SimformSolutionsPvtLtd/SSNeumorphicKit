//
//  InnerShadowModifier.swift
//  SSNeumorphicView
//
//  Created by Simform Solutions on 30/07/24.
//

import SwiftUI

/// Custom modifier to add inner shadow to a View.
public struct InnerShadowModifier<S: Shape>: ViewModifier {
    
    // MARK: - Variables
    
    /// The shape to which the inner shadow will be applied.
    var shape: S
    
    /// The color of the dark shadow.
    var shadowColorDark: Color
    
    /// The color of the light shadow.
    var shadowColorLight: Color
    
    /// The width of the shadow.
    var shadowWidth: CGFloat
    
    /// The blur radius of the shadow.
    var radius: CGFloat
    
    /// The offset of the shadow.
    var offset: CGFloat
    
    // MARK: - Initializers
    
    /// Creates an `InnerShadowModifier` with specified parameters.
    /// - Parameters:
    ///   - shape: The shape to which the inner shadow will be applied.
    ///   - shadowColorDark: The color of the dark shadow (default is `Color.Neumorphic.darkShadow`).
    ///   - shadowColorLight: The color of the light shadow (default is `Color.Neumorphic.lightShadow`).
    ///   - radius: The blur radius of the shadow.
    ///   - shadowWidth: The width of the shadow (default is `8`).
    ///   - offset: The offset of the shadow (default is `2`).
    public init(shape: S,
                shadowColorDark: Color = Color.Neumorphic.darkShadow,
                shadowColorLight: Color = Color.Neumorphic.lightShadow,
                radius: CGFloat,
                shadowWidth: CGFloat = 8,
                offset: CGFloat = 2) {
        self.shadowColorDark = shadowColorDark
        self.shadowColorLight = shadowColorLight
        self.radius = radius
        self.shape = shape
        self.offset = offset
        self.shadowWidth = shadowWidth
    }
    
    // MARK: - Functions
    
    /// Adds an overlay with the specified shadow properties.
    /// - Parameters:
    ///   - shape: The shape to which the overlay will be applied.
    ///   - linearGradient: The gradient used for the shadow.
    ///   - strokeColor: The color of the stroke.
    ///   - offset: The offset of the shadow.
    ///   - shadowWidth: The width of the shadow.
    ///   - radius: The blur radius of the shadow.
    /// - Returns: A `View` with the applied overlay.
    fileprivate func addOverlay(
        shape: S,
        linearGradient: LinearGradient,
        strokeColor: Color,
        offset: CGFloat ,
        shadowWidth: CGFloat,
        radius: CGFloat
    ) -> some View {
        return shape
            .stroke(strokeColor, lineWidth: shadowWidth)
            .blur(radius: radius)
            .offset(x: offset, y: offset)
            .mask(shape.fill(linearGradient))
    }
    
    // MARK: - Modifier Body
    
    /// Applies the inner shadow effect to the content view.
    /// - Parameter content: The view to which the modifier is applied.
    /// - Returns: The view with the inner shadow effect.
    public func body(content: Content) -> some View {
        
        if #available(iOS 15.0, *) {
            content
                .overlay {
                    addOverlay(
                        shape: shape,
                        linearGradient: LinearGradient(shadowColorDark, Color.clear),
                        strokeColor: shadowColorDark,
                        offset: offset,
                        shadowWidth: shadowWidth,
                        radius: radius
                    )
                }
                .overlay(
                    addOverlay(
                        shape: shape,
                        linearGradient: LinearGradient(Color.clear, shadowColorLight),
                        strokeColor: shadowColorLight,
                        offset: -offset,
                        shadowWidth: shadowWidth,
                        radius: radius
                    )
                )
        } else {
            // Fallback on earlier versions
            content
                .overlay(
                    addOverlay(
                        shape: shape,
                        linearGradient: LinearGradient(shadowColorDark, Color.clear),
                        strokeColor: shadowColorDark,
                        offset: offset,
                        shadowWidth: shadowWidth,
                        radius: radius
                    ),
                    alignment: .center
                )
                .overlay(
                    addOverlay(
                        shape: shape,
                        linearGradient: LinearGradient(Color.clear, shadowColorLight),
                        strokeColor: shadowColorLight,
                        offset: -offset,
                        shadowWidth: shadowWidth,
                        radius: radius
                    ),
                    alignment: .center
                )
        }
    }
}
