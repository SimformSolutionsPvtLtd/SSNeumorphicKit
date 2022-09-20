//
//  NeumorphicButton.swift
//  SSNeumorphicView-Example
//
//  Created by Simform Solutions on 29/06/20.
//  Copyright © 2020 Simform Solutions Pvt. Ltd. All rights reserved.
//

import UIKit

open class SSNeumorphicButton: UIButton {
    
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
    
    open var btnDepthType: ShadowLayerType? {
        get {
            return neumorphicLayer?.layerDepthType
        } set {
            if let depthType = newValue {
                neumorphicLayer?.layerDepthType = depthType
            }
        }
    }
    
    open var btnNeumorphicLayerMainColor: CGColor? {
        get {
            return neumorphicLayer?.neumorphicMainColor
        } set {
            if let mainColor = newValue {
                neumorphicLayer?.neumorphicMainColor = mainColor
            }
        }
    }
    
    open var btnNeumorphicDarkShadowColor: CGColor? {
        get {
            return neumorphicLayer?.neumorphicDarkShadowColor
        } set {
            if let darkColor = newValue {
                neumorphicLayer?.neumorphicDarkShadowColor = darkColor
            }
        }
    }
    
    open var btnNeumorphicLightShadowColor: CGColor? {
        get {
            return neumorphicLayer?.neumorphicLightShadowColor
        } set {
            if let lightColor = newValue {
                neumorphicLayer?.neumorphicLightShadowColor = lightColor
            }
        }
    }
    
    open var btnNeumorphicShadowOffset: CGSize? {
        get {
            return neumorphicLayer?.neumorphicShadowOffset
        } set {
            if let shadowOffset = newValue {
                neumorphicLayer?.neumorphicShadowOffset = shadowOffset
            }
        }
    }
    
    open var btnNeumorphicShadowOpacity: Float? {
        get {
            return neumorphicLayer?.neumorphicShadowOpacity
        } set {
            if let shadowOpacity = newValue {
                neumorphicLayer?.neumorphicShadowOpacity = shadowOpacity
            }
        }
    }
    
    open var btnNeumorphicShadowRadius: CGFloat? {
        get {
            return neumorphicLayer?.neumorphicShadowRadius
        } set {
            if let shadowRadius = newValue {
                neumorphicLayer?.neumorphicShadowRadius = shadowRadius
            }
        }
    }
    
    open var btnNeumorphicCornerRadius: CGFloat? {
        get {
            return neumorphicLayer?.neumorphicCornerRadius
        } set {
            if let cornerRadius = newValue {
                neumorphicLayer?.neumorphicCornerRadius = cornerRadius
            }
        }
    }
    
    open var btnElementDepth: CGFloat? {
        get {
            return neumorphicLayer?.elementDepth
        } set {
            if let elementDepth = newValue {
                neumorphicLayer?.elementDepth = elementDepth
            }
        }
    }
    
    public override var isHighlighted: Bool {
        didSet {
            if oldValue != isHighlighted {
                isSelected = isHighlighted
            }
        }
    }
    
    public override var isSelected: Bool {
        didSet {
            if oldValue != isSelected {
                neumorphicLayer?.layerDepthType = isSelected ? .innerShadow : .outerShadow
            }
        }
    }
    
}
