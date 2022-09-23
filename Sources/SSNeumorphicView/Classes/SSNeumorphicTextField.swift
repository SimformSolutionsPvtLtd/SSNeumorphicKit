//
//  NeumorphicTextField.swift
//  SSNeumorphicView-Example
//
//  Created by Simform Solutions on 01/07/20.
//  Copyright © 2020 Simform Solutions Pvt. Ltd. All rights reserved.
//

import Foundation
import UIKit

// MARK: - Neumorphic UITextField
open class SSNeumorphicTextField: UITextField {
    
    fileprivate var neumorphicLayer: SSNeumorphicLayer? {
        return layer as? SSNeumorphicLayer
    }
    public override class var layerClass: AnyClass {
        return SSNeumorphicLayer.self
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        neumorphicLayer?.updateShapeAndPath()
    }

    override open func awakeFromNib() {
        super.awakeFromNib()
        neumorphicLayer?.neumorphicLayerSubLayer()
    }
    
    open var txtDepthType: ShadowLayerType? {
        get {
            return neumorphicLayer?.layerDepthType
        } set {
            if let depthType = newValue {
                neumorphicLayer?.layerDepthType = depthType
            }
        }
    }
    
    open var txtNeumorphicMainColor: CGColor? {
        get {
            return neumorphicLayer?.neumorphicMainColor
        } set {
            if let mainColor = newValue {
                neumorphicLayer?.neumorphicMainColor = mainColor
            }
        }
    }
    
    open var txtNeumorphicDarkShadowColor: CGColor? {
        get {
            return neumorphicLayer?.neumorphicDarkShadowColor
        } set {
            if let darkColor = newValue {
                neumorphicLayer?.neumorphicDarkShadowColor = darkColor
            }
        }
    }
    
    open var txtNeumorphicLightShadowColor: CGColor? {
        get {
            return neumorphicLayer?.neumorphicLightShadowColor
        } set {
            if let lightColor = newValue {
                neumorphicLayer?.neumorphicLightShadowColor = lightColor
            }
        }
    }
    
    open var txtNeumorphicShadowOffset: CGSize? {
        get {
            return neumorphicLayer?.neumorphicShadowOffset
        } set {
            if let shadowOffset = newValue {
                neumorphicLayer?.neumorphicShadowOffset = shadowOffset
            }
        }
    }
    
    open var txtNeumorphicShadowOpacity: Float? {
        get {
            return neumorphicLayer?.neumorphicShadowOpacity
        } set {
            if let shadowOpacity = newValue {
                neumorphicLayer?.neumorphicShadowOpacity = shadowOpacity
            }
        }
    }
    
    open var txtNeumorphicShadowRadius: CGFloat? {
        get {
            return neumorphicLayer?.neumorphicShadowRadius
        } set {
            if let shadowRadius = newValue {
                neumorphicLayer?.neumorphicShadowRadius = shadowRadius
            }
        }
    }
    
    open var txtNeumorphicCornerRadius: CGFloat? {
        get {
            return neumorphicLayer?.neumorphicCornerRadius
        } set {
            if let cornerRadius = newValue {
                neumorphicLayer?.neumorphicCornerRadius = cornerRadius
            }
        }
    }
    
    open var txtElementDepth: CGFloat? {
        get {
            return neumorphicLayer?.elementDepth
        } set {
            if let elementDepth = newValue {
                neumorphicLayer?.elementDepth = elementDepth
            }
        }
    }
    
}
