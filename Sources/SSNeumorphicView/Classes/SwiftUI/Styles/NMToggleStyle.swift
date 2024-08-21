//
//  ToggleStyle.swift
//  SSNeumorphicView
//
//  Created by Simform Solutions on 01/08/24.
//
import SwiftUI

/// A custom toggle style that applies a Neumorphic design to a `Toggle` view.
public struct NMToggleStyle: ToggleStyle {
    
    // MARK: - Variables
    
    /// The color of the toggle when it is in the "on" state.
    var tintColor: Color
    
    /// The color of the toggle when it is in the "off" state.
    var offTintColor: Color
    
    /// The dark shadow color applied when the toggle is off.
    var offDarkShadow: Color
    
    /// The light shadow color applied when the toggle is off.
    var offLightShadow: Color
    
    /// The dark shadow color applied when the toggle is on.
    var tintDarkShadowColor: Color
    
    /// The light shadow color applied when the toggle is on.
    var tintLightShadowColor: Color
    
    /// The height of the toggle.
    var height: CGFloat
    
    /// The width of the toggle.
    var width: CGFloat
    
    /// The height of the toggle's thumb. If `nil`, default size will be used.
    var thumbHeight: CGFloat?
    
    /// The width of the toggle's thumb. If `nil`, default size will be used.
    var thumbWidth: CGFloat?
    
    /// The thickness of the border around the toggle.
    var thickness: CGFloat
    
    /// The blur radius for inner shadows on the toggle.
    var innerShadowRadius: CGFloat
    
    /// The offset for the dark shadow of the thumb.
    var thumbDarkShadowOffset: CGFloat
    
    /// The offset for the light shadow of the thumb.
    var thumbLightShadowOffset: CGFloat
    
    /// The blur radius for the thumb's outer shadows.
    var thumbShadowRadius: CGFloat
    
    /// The animation applied during the transition between on and off states. If `nil`, a default animation is used.
    var animation: Animation?
    
    /// A flag indicating whether the label should be hidden or displayed.
    var hideLabel: Bool
    
    // MARK: - Initializers
    
    /// Initializes a Neumorphic toggle style.
    /// - Parameters:
    ///   - tintColor: The color of the toggle when it is in the "on" state.
    ///   - offTintColor: The color of the toggle when it is in the "off" state (default is `Color.Neumorphic.main`).
    ///   - offDarkShadow: The dark shadow color when the toggle is off (default is `Color.Neumorphic.darkShadow`).
    ///   - offLightShadow: The light shadow color when the toggle is off (default is `Color.Neumorphic.lightShadow`).
    ///   - tintDarkShadowColor: The dark shadow color when the toggle is on (default is `.black.opacity(0.5)`).
    ///   - tintLightShadowColor: The light shadow color when the toggle is on (default is `.white.opacity(0.3)`).
    ///   - hideLabel: A flag indicating whether the label should be hidden or not.
    ///   - animation: The animation to be used for transitioning between on and off states (optional).
    ///   - innerShadowRadius: The blur radius for inner shadows (default is `3`).
    ///   - thumbHeight: The height of the toggle's thumb (optional).
    ///   - thumbWidth: The width of the toggle's thumb (optional).
    ///   - thumbDarkShadowOffset: The offset for the dark shadow of the thumb (default is `2`).
    ///   - thumbLightShadowOffset: The offset for the light shadow of the thumb (default is `2`).
    ///   - thumbShadowRadius: The blur radius for the thumb's outer shadows (default is `1`).
    ///   - height: The height of the toggle (default is `45`).
    ///   - width: The width of the toggle (default is `75`).
    ///   - thickness: The thickness of the toggle's border (default is `5`).
    public init(tintColor: Color,
                offTintColor: Color = Color.Neumorphic.main,
                offDarkShadow: Color = Color.Neumorphic.darkShadow,
                offLightShadow: Color = Color.Neumorphic.lightShadow,
                tintDarkShadowColor: Color = .black.opacity(0.5),
                tintLightShadowColor: Color = .white.opacity(0.3),
                hideLabel: Bool,
                animation: Animation? = nil,
                innerShadowRadius: CGFloat = 3,
                thumbHeight: CGFloat? = nil,
                thumbWidth: CGFloat? = nil,
                thumbDarkShadowOffset: CGFloat = 2,
                thumbLightShadowOffset: CGFloat = 2,
                thumbShadowRadius: CGFloat = 1,
                height: CGFloat = 45,
                width: CGFloat = 75,
                thickness: CGFloat = 5) {
        self.tintColor = tintColor
        self.offTintColor = offTintColor
        self.offDarkShadow = offDarkShadow
        self.offLightShadow = offLightShadow
        self.tintDarkShadowColor = tintDarkShadowColor
        self.tintLightShadowColor = tintLightShadowColor
        self.hideLabel = hideLabel
        self.height = height
        self.width = width
        self.thumbWidth = thumbWidth
        self.thumbHeight = thumbHeight
        self.thumbDarkShadowOffset = thumbDarkShadowOffset
        self.thumbLightShadowOffset = thumbLightShadowOffset
        self.thickness = thickness
        self.innerShadowRadius = innerShadowRadius
        self.animation = animation
        self.thumbShadowRadius = thumbShadowRadius
    }
    
    /// Initializes a Neumorphic toggle style with default shadow colors for iOS 14 and above.
    /// - Parameters:
    ///   - tintColor: The color of the toggle when it is in the "on" state.
    ///   - offTintColor: The color of the toggle when it is in the "off" state (default is `Color.Neumorphic.main`).
    ///   - offDarkShadow: The dark shadow color when the toggle is off (default is `Color.Neumorphic.darkShadow`).
    ///   - offLightShadow: The light shadow color when the toggle is off (default is `Color.Neumorphic.lightShadow`).
    ///   - hideLabel: A flag indicating whether the label should be hidden or not.
    ///   - animation: The animation to be used for transitioning between on and off states (optional).
    ///   - innerShadowRadius: The blur radius for inner shadows (default is `3`).
    ///   - thumbHeight: The height of the thumb (optional).
    ///   - thumbWidth: The width of the thumb (optional).
    ///   - thumbDarkShadowOffset: The offset for the dark shadow of the thumb (default is `2`).
    ///   - thumbLightShadowOffset: The offset for the light shadow of the thumb (default is `2`).
    ///   - thumbShadowRadius: The blur radius for the thumb's outer shadows (default is `1`).
    ///   - height: The height of the toggle (default is `45`).
    ///   - width: The width of the toggle (default is `75`).
    ///   - thickness: The thickness of the toggle's border (default is `5`).
    @available(iOS 14.0, *)
    public init(tintColor: Color,
                offTintColor: Color = Color.Neumorphic.main,
                offDarkShadow: Color = Color.Neumorphic.darkShadow,
                offLightShadow: Color = Color.Neumorphic.lightShadow,
                hideLabel: Bool,
                animation: Animation? = nil,
                innerShadowRadius: CGFloat = 3,
                thumbHeight: CGFloat? = nil,
                thumbWidth: CGFloat? = nil,
                thumbDarkShadowOffset: CGFloat = 2,
                thumbLightShadowOffset: CGFloat = 2,
                thumbShadowRadius: CGFloat = 1,
                height: CGFloat = 45,
                width: CGFloat = 75,
                thickness: CGFloat = 5) {
        self.init(
            tintColor: tintColor,
            offTintColor: offTintColor,
            offDarkShadow: offDarkShadow,
            offLightShadow: offLightShadow,
            tintDarkShadowColor: tintColor.mix(with: Color.black, by: 0.5),
            tintLightShadowColor: tintColor.mix(with: Color.white, by: 0.2),
            hideLabel: hideLabel,
            animation: animation,
            innerShadowRadius: innerShadowRadius,
            thumbHeight: thumbHeight,
            thumbWidth: thumbWidth,
            thumbDarkShadowOffset: thumbDarkShadowOffset,
            thumbLightShadowOffset: thumbLightShadowOffset,
            thumbShadowRadius: thumbShadowRadius,
            height: height,
            width: width,
            thickness: thickness
        )
    }
    
    // MARK: - ButtonStyle body
    
    public func makeBody(configuration: Self.Configuration) -> some View {
        return HStack {
            if !hideLabel {
                configuration.label
                    .font(.body)
                Spacer()
            }
            ZStack(alignment: configuration.isOn ? .trailing : .leading) {
                
                ZStack {
                    
                    // Shape that makes the outside of the toggle.
                    Capsule()
                        .fill(offTintColor)
                        .outerShadow(darkShadow: offDarkShadow, lightShadow: offLightShadow)  // Give outer shadows for the outer shape.
                        .frame(width: width, height: height)
                    
                    // Shape that makes the inside of the toggle.
                    
                    Capsule()
                        .fill(configuration.isOn ? tintColor : offTintColor)
                        .innerShadow( // Give inner shadows to the inner shape.
                            Capsule(),
                            darkShadow: configuration.isOn ? tintDarkShadowColor : offDarkShadow,
                            lightShadow: configuration.isOn ? tintLightShadowColor : offLightShadow,
                            radius: innerShadowRadius
                        )
                        .frame(width: width - thickness, height: height - thickness)
                }
                
                // The thumb for the toggle.
                if(thumbWidth == nil || thumbHeight == nil) {
                    
                    Circle()
                        .fill(offTintColor)
                        .outerShadow( // Give outer shadows to the thumb.
                            darkShadow: offDarkShadow,
                            lightShadow: offLightShadow,
                            lightShadowOffset: thumbLightShadowOffset,
                            darkShadowOffset: thumbDarkShadowOffset,
                            radius: thumbShadowRadius
                        )
                        .padding(thickness * 2)
                } else {
                    
                    Circle()
                        .fill(offTintColor)
                        .outerShadow( // Give outer shadows to the thumb.
                            darkShadow: offDarkShadow,
                            lightShadow: offLightShadow,
                            lightShadowOffset: thumbLightShadowOffset,
                            darkShadowOffset: thumbDarkShadowOffset,
                            radius: thumbShadowRadius
                        )
                        .frame(width: thumbWidth, height: thumbHeight)
                        .padding(thickness * 2)
                }
            }
            .frame(width: width, height: height)
            .onTapGesture {
                withAnimation(animation ?? .bouncy(duration: 0.4)) {
                    configuration.isOn.toggle()
                }
            }
        }
    }
}
