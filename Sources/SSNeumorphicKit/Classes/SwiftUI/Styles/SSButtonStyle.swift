//
//  SSButtonStyle.swift
//  SSNeumorphicKit
//
//  Created by Aayush Sarikhada on 17/07/24.
//
import SwiftUI

public struct SUIButtonStyle<S: Shape> : ButtonStyle {
    
    var shape: S
    var primaryColor : Color
    var textColor : Color
    var darkShadowColor : Color
    var lightShadowColor : Color
    var padding : CGFloat
    
    public init(
        _ shape: S,
        mainColor : Color,
        textColor : Color,
        darkShadowColor: Color,
        lightShadowColor: Color,
        padding : CGFloat = 16
    ) {
        self.shape = shape
        self.primaryColor = mainColor
        self.textColor = textColor
        self.darkShadowColor = darkShadowColor
        self.lightShadowColor = lightShadowColor
        self.padding = padding
    }
    
    public func makeBody(configuration: Self.Configuration) -> some View {
        SUINeumorphicButton(
            configuration: configuration,
            shape: shape,
            primaryColor: primaryColor,
            textColor: textColor,
            darkShadowColor: darkShadowColor,
            lightShadowColor: lightShadowColor,
            padding: padding
        )
    }
    
    struct SUINeumorphicButton: View {
        let configuration: ButtonStyle.Configuration
        
        var shape: S
        var primaryColor : Color
        var textColor : Color
        var darkShadowColor : Color
        var lightShadowColor : Color
        var padding : CGFloat
        
        @Environment(\.isEnabled) private var isEnabled: Bool
        
        var body: some View {
            configuration
                .label
                .foregroundColor(isEnabled ? textColor : darkShadowColor)
                .padding(padding)
                .scaleEffect(configuration.isPressed ? 0.95 : 1)
                .background(
                    ZStack{
                        if isEnabled {
                            // Inner shadow
                            shape.fill(primaryColor)
                                .innerShadow(shape, darkShadow: darkShadowColor, lightShadow: lightShadowColor, spread: 0.15, radius: 3)
                                .opacity(configuration.isPressed ? 1 : 0)
                            
                            // Outer shadow
                            shape.fill(primaryColor)
                                .outerShadow(darkShadow: darkShadowColor, lightShadow: lightShadowColor, offset: 2, radius: 3)
                                .opacity(configuration.isPressed ? 0 : 1)
                        } else {
                            shape.stroke(darkShadowColor, lineWidth : 1)
                                .opacity(1)
                            shape.fill(primaryColor)
                        }
                    }
                )
        }
    }
    
}
