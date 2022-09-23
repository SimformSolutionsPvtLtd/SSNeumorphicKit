//
//  NeumorphicView.swift
//  SSNeumorphicView-Example
//
//  Created by Simform Solutions on 29/06/20.
//  Copyright © 2020 Simform Solutions Pvt. Ltd. All rights reserved.
//

import UIKit

// MARK: - NeumorphicView
open class SSNeumorphicView: UIView {
    
    fileprivate var neumorphicLayer: SSNeumorphicLayer? {
        return layer as? SSNeumorphicLayer
    }
    
    override open class var layerClass: AnyClass {
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
    
    open var viewDepthType: ShadowLayerType? {
        get {
            return neumorphicLayer?.layerDepthType
        } set {
            if let depthType = newValue {
                neumorphicLayer?.layerDepthType = depthType
            }
        }
    }
    
    open var viewNeumorphicMainColor: CGColor? {
        get {
            return neumorphicLayer?.neumorphicMainColor
        } set {
            if let mainColor = newValue {
                neumorphicLayer?.neumorphicMainColor = mainColor
            }
        }
    }
    
    open var viewNeumorphicDarkShadowColor: CGColor? {
        get {
            return neumorphicLayer?.neumorphicDarkShadowColor
        } set {
            if let darkColor = newValue {
                neumorphicLayer?.neumorphicDarkShadowColor = darkColor
            }
        }
    }
    
    open var viewNeumorphicLightShadowColor: CGColor? {
        get {
            return neumorphicLayer?.neumorphicLightShadowColor
        } set {
            if let lightColor = newValue {
                neumorphicLayer?.neumorphicLightShadowColor = lightColor
            }
        }
    }
    
    open var viewNeumorphicShadowOffset: CGSize? {
        get {
            return neumorphicLayer?.neumorphicShadowOffset
        } set {
            if let shadowOffset = newValue {
                neumorphicLayer?.neumorphicShadowOffset = shadowOffset
            }
        }
    }
    
    open var viewNeumorphicShadowOpacity: Float? {
        get {
            return neumorphicLayer?.neumorphicShadowOpacity
        } set {
            if let shadowOpacity = newValue {
                neumorphicLayer?.neumorphicShadowOpacity = shadowOpacity
            }
        }
    }
    
    open var viewNeumorphicShadowRadius: CGFloat? {
        get {
            return neumorphicLayer?.neumorphicShadowRadius
        } set {
            if let shadowRadius = newValue {
                neumorphicLayer?.neumorphicShadowRadius = shadowRadius
            }
        }
    }
    
    open var viewNeumorphicCornerRadius: CGFloat? {
        get {
            return neumorphicLayer?.neumorphicCornerRadius
        } set {
            if let cornerRadius = newValue {
                neumorphicLayer?.neumorphicCornerRadius = cornerRadius
            }
        }
    }
    
    open var viewElementDepth: CGFloat? {
        get {
            return neumorphicLayer?.elementDepth
        } set {
            if let elementDepth = newValue {
                neumorphicLayer?.elementDepth = elementDepth
            }
        }
    }
    
}
