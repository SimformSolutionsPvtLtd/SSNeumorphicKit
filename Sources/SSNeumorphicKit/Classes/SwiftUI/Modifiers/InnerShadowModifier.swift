//
//  InnerShadowModifier.swift
//  SSNeumorphicKit
//
//  Created by Aayush Sarikhada on 17/07/24.
//

import SwiftUI

struct InnerShadowViewModifier<S: Shape> : ViewModifier {
    var shape: S
    var darkShadowColor : Color = .black
    var lightShadowColor : Color = .white
    var spread: CGFloat = 0.5    //The value of spread is between 0 to 1. Higher value makes the shadow look more intense.
    var radius: CGFloat = 10
    
    init(shape: S, darkShadowColor: Color, lightShadowColor: Color, spread: CGFloat, radius:CGFloat) {
        self.shape = shape
        self.darkShadowColor = darkShadowColor
        self.lightShadowColor = lightShadowColor
        self.spread = spread
        self.radius = radius
    }

    fileprivate func strokeLineWidth(_ geo: GeometryProxy) -> CGFloat {
        return geo.size.width * 0.10
    }
    
    fileprivate func strokeLineScale(_ geo: GeometryProxy) -> CGFloat {
        let lineWidth = strokeLineWidth(geo)
        return geo.size.width / CGFloat(geo.size.width - lineWidth)
    }
    
    fileprivate func shadowOffset(_ geo: GeometryProxy) -> CGFloat {
        return (geo.size.width <= geo.size.height ? geo.size.width : geo.size.height) * 0.5 * min(max(spread, 0), 1)
    }
    

    fileprivate func addSoftInnerShadow(_ content: InnerShadowViewModifier.Content) -> some View {
        return GeometryReader { geo in
            
            let xShadowOffSet = self.shadowOffset(geo)
            let yShadowOffSet = self.shadowOffset(geo)
            
            self.shape.fill(self.lightShadowColor)
                .inverseMask(
                    self.shape
                    .offset(x: -xShadowOffSet, y: -yShadowOffSet)
                )
                .offset(x: xShadowOffSet , y: yShadowOffSet)
                .blur(radius: self.radius)
                .shadow(color: self.lightShadowColor, radius: self.radius, x: -xShadowOffSet/2, y: -yShadowOffSet/2 )
                .mask(
                    self.shape
                )
                .overlay(
                    self.shape
                        .fill(self.darkShadowColor)
                        .inverseMask(
                            self.shape
                                .offset(x: xShadowOffSet, y: yShadowOffSet)
                        )
                        .offset(x: -xShadowOffSet , y: -yShadowOffSet)
                        .blur(radius: self.radius)
                        .shadow(color: self.darkShadowColor, radius: self.radius, x: xShadowOffSet/2, y: yShadowOffSet/2 )
                )
                .mask(
                    self.shape
                )
        }
    }

    func body(content: Content) -> some View {
        content.overlay(
            addSoftInnerShadow(content)
        )
    }
}
