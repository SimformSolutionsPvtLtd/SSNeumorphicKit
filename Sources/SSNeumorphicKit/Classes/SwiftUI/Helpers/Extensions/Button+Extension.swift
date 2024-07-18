//
//  Button+Extension.swift
//  SSNeumorphicKit
//
//  Created by Aayush Sarikhada on 18/07/24.
//

import SwiftUI

extension Button {

    public func softButtonStyle<S : Shape>(
        _ content: S,
        padding : CGFloat = 16,
        mainColor : Color = Color.Neumorphic.main,
        textColor : Color = Color.Neumorphic.secondary,
        darkShadowColor: Color = Color.Neumorphic.darkShadow,
        lightShadowColor: Color = Color.Neumorphic.lightShadow
    ) -> some View {
        self.buttonStyle(
            SUIButtonStyle(
                content, mainColor: mainColor,
                textColor: textColor,
                darkShadowColor: darkShadowColor,
                lightShadowColor: lightShadowColor,
                padding:padding
            )
        )
    }

    
}
