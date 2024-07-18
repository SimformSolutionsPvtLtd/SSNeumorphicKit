//
//  View+Extension.swift
//  SSNeumorphicKit
//
//  Created by Aayush Sarikhada on 18/07/24.
//
import SwiftUI

extension View {
    
    func outerShadow(darkShadow: Color = Color.Neumorphic.darkShadow, lightShadow: Color = Color.Neumorphic.lightShadow, offset: CGFloat = 6, radius:CGFloat = 3) -> some View{
        modifier(OuterShadowModifier(shadowColorDark: darkShadow, shadowColorLight: lightShadow, radius: radius, offset: offset))
    }
    
    func innerShadow<S : Shape>(_ content: S, darkShadow: Color = Color.Neumorphic.darkShadow, lightShadow: Color = Color.Neumorphic.lightShadow, spread: CGFloat = 0.5, radius: CGFloat = 10) -> some View {
        modifier(
            InnerShadowViewModifier(shape: content, darkShadowColor: darkShadow, lightShadowColor: lightShadow, spread: spread, radius: radius)
        )
    }
    
    func inverseMask<Mask>(_ mask: Mask) -> some View where Mask: View {
      self.mask(mask
        .foregroundColor(.black)
        .background(Color.white)
        .compositingGroup()
        .luminanceToAlpha()
      )
    }
}
