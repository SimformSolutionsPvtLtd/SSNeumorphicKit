//
//  OuterShadowModifier.swift
//  SSNeumorphicKit
//
//  Created by Aayush Sarikhada on 17/07/24.
//

import SwiftUI

struct OuterShadowModifier: ViewModifier {
    var shadowColorDark: Color
    var shadowColorLight: Color
    var radius: CGFloat
    var offset: CGFloat
    
    init(shadowColorDark: Color, shadowColorLight: Color, radius: CGFloat, offset: CGFloat) {
        self.shadowColorDark = shadowColorDark
        self.shadowColorLight = shadowColorLight
        self.radius = radius
        self.offset = offset
    }
    
    func body(content: Content) -> some View {
        content
            .shadow(color: shadowColorDark, radius: radius, x: offset, y: offset)
            .shadow(color: shadowColorLight, radius: radius, x: -offset, y: -offset)
    }
}
