//
//  NMButtonStyle.swift
//  SSNeumorphicView
//
//  Created by Simform Solutions on 30/07/24.
//
import SwiftUI

/// A custom button style that applies a neumorphic design to any `Button`.
public struct NMButtonStyle<S: Shape>: ButtonStyle {
    
    // MARK: - Variables
    
    /// The shape to be used for the button's background.
    var shape: S
    
    /// The primary color of the button.
    var primaryColor: Color
    
    /// The padding around the button's content.
    var padding: CGFloat
    
    /// The color of the dark shadow.
    var darkColor: Color
    
    /// The color of the light shadow.
    var lightColor: Color
    
    /// The offset of the inner shadow from the button's content.
    var innerShadowOffset: CGFloat
    
    /// The blur radius for the button's inner shadow.
    var innerShadowBlurRadius: CGFloat
    
    /// The offset of the light shadow from the button's background.
    var outerLightShadowOffset: CGFloat
    
    /// The offset of the dark shadow from the button's background.
    var outerDarkShadowOffset: CGFloat
    
    /// The blur radius for the button's outer shadows.
    var outerShadowRadius: CGFloat
    
    /// The width of the inner shadows.
    var innerShadowWidth: CGFloat
    
    // MARK: - Initializers
    
    /// Creates an `NMButtonStyle` with specified parameters.
    /// - Parameters:
    ///   - shape: The shape to be used for the button's background.
    ///   - padding: The padding around the button's content (default is `30`).
    ///   - primaryColor: The primary color of the button (default is `Color.Neumorphic.main`).
    ///   - lightColor: The color of the light shadow (default is `Color.Neumorphic.lightShadow`).
    ///   - darkColor: The color of the dark shadow (default is `Color.Neumorphic.darkShadow`).
    ///   - innerShadowOffset: The offset of the inner shadow from the button's content (default is `2`).
    ///   - innerShadowBlurRadius: The blur radius for the button's inner shadow (default is `2`).
    ///   - innerShadowWidth: The width of the inner shadow (default is `8`).
    ///   - outerLightShadowOffset: The offset of the light shadow from the button's background (default is `3`).
    ///   - outerDarkShadowOffset: The offset of the dark shadow from the button's background (default is `5`).
    ///   - outerShadowRadius: The blur radius for the button's outer shadows (default is `4`).
    public init(shape: S,
                padding: CGFloat = 30,
                primaryColor: Color = Color.Neumorphic.main,
                lightColor: Color = Color.Neumorphic.lightShadow,
                darkColor: Color = Color.Neumorphic.darkShadow,
                innerShadowOffset: CGFloat = 2,
                innerShadowBlurRadius: CGFloat = 2,
                innerShadowWidth: CGFloat = 8,
                outerLightShadowOffset: CGFloat = 3,
                outerDarkShadowOffset: CGFloat = 5,
                outerShadowRadius: CGFloat = 4
    ) {
        self.shape = shape
        self.padding = padding
        self.darkColor = darkColor
        self.lightColor = lightColor
        self.primaryColor = primaryColor
        self.outerLightShadowOffset = outerLightShadowOffset
        self.outerDarkShadowOffset = outerDarkShadowOffset
        self.outerShadowRadius = outerShadowRadius
        self.innerShadowOffset = innerShadowOffset
        self.innerShadowBlurRadius = innerShadowBlurRadius
        self.innerShadowWidth = innerShadowWidth
    }
    
    // MARK: - ButtonStyle Body
    
    /// Configures the appearance of the button based on its current state.
    /// - Parameter configuration: The configuration for the button style.
    /// - Returns: A `View` with the applied neumorphic design.
    public func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(padding)
            .background(
                // For Inner Shadow
                Group {
                    if configuration.isPressed {
                        shape
                            .fill(primaryColor)
                            .innerShadow(shape,
                                         darkShadow: darkColor,
                                         lightShadow: lightColor,
                                         offset: innerShadowOffset,
                                         radius: innerShadowBlurRadius,
                                         shadowWidth: innerShadowWidth)
                    } else {
                        // For outer shadow
                        shape
                            .fill(primaryColor)
                            .outerShadow(darkShadow: darkColor,
                                         lightShadow: lightColor,
                                         lightShadowOffset: outerLightShadowOffset,
                                         darkShadowOffset: outerDarkShadowOffset,
                                         radius: outerShadowRadius)
                    }
                }
            )
    }
}
