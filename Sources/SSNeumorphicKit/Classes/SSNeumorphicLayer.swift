//
//  SSNeumorphicLayer.swift
//  SSNeumorphicView-Example
//
//  Created by Simform Solutions on 01/07/20.
//  Copyright © 2020 Simform Solutions Pvt. Ltd. All rights reserved.
//

import Foundation
import UIKit

public enum ShadowLayerType {
    case innerShadow, outerShadow
}

public protocol SSNeumorphicLayerDelegate: UIView {
    var layerSSNeumorphicLayer: SSNeumorphicLayer? { get }
}

public class SSNeumorphicLayer: CALayer {
    
    public weak var neumorphicLayerDelegate: SSNeumorphicLayerDelegate?
    fileprivate var isSelectedLayerView = false
    fileprivate var darkShadowLayer = CAShapeLayer()
    fileprivate var lightShadowLayer = CAShapeLayer()
    
    open var neumorphicMainColor: CGColor = #colorLiteral(red: 0.9333333333, green: 0.9333333333, blue: 0.9333333333, alpha: 1) {
        didSet { setNeedsDisplay() }
    }
    
    open var neumorphicDarkShadowColor: CGColor = #colorLiteral(red: 0.8196078431, green: 0.8509803922, blue: 0.9019607843, alpha: 1).withAlphaComponent(0.7).cgColor {
        didSet { setNeedsDisplay() }
    }
    
    open var neumorphicLightShadowColor: CGColor = UIColor.white.withAlphaComponent(0.7).cgColor {
        didSet { setNeedsDisplay() }
    }
    
    open var neumorphicShadowOffset: CGSize = .init(width: 5, height: 5) {
        didSet { setNeedsDisplay() }
    }
    
    open var neumorphicShadowOpacity: Float = 1 {
        didSet { setNeedsDisplay() }
    }
    
    open var neumorphicShadowRadius: CGFloat = 4 {
        didSet { setNeedsDisplay() }
    }
    
    open var neumorphicCornerRadius: CGFloat = 22 {
        didSet { setNeedsDisplay() }
    }
    
    open var layerDepthType: ShadowLayerType = .innerShadow {
        didSet { neumorphicLayerSubLayer() }
    }
    
    open var elementDepth: CGFloat = 6 {
        didSet { setNeedsDisplay() }
    }
    
    /// If set to true, show element highlight color. Animated.
    open var selected: Bool {
        get {
            return isSelectedLayerView
        }
        set {
            isSelectedLayerView = newValue
            updateShapeAndPath()
        }
    }
    
    open override var bounds: CGRect {
        didSet { updateShapeAndPath() }
    }
    
}

// MARK: - create dark and light shadow layer
extension SSNeumorphicLayer {
    
    func neumorphicLayerSubLayer() {
        DispatchQueue.main.async {
            self.backgroundColor = UIColor.clear.cgColor
            self.masksToBounds = self.layerDepthType == .outerShadow ? false : true
            self.darkShadowLayer.removeFromSuperlayer()
            self.lightShadowLayer.removeFromSuperlayer()
            let darkLayer = self.neumorphicShadowLayer(shadowColor: self.neumorphicDarkShadowColor, shadowOffset: self.neumorphicShadowOffset)
            self.insertSublayer(darkLayer, at: 0)
            self.darkShadowLayer = darkLayer
            let lightLayer = self.neumorphicShadowLayer(shadowColor: self.neumorphicLightShadowColor, shadowOffset: self.neumorphicShadowOffset.inverse)
            self.insertSublayer(lightLayer, at: 0)
            self.lightShadowLayer = lightLayer
            self.updateShapeAndPath()
        }
        
    }
    
    func updateShapeAndPath() {
        darkShadowLayer.path = drawShadowPath()
        lightShadowLayer.path = drawShadowPath()
        if isSelectedLayerView || layerDepthType == .innerShadow {
            darkShadowLayer.mask = drawShadowMask()
            lightShadowLayer.mask = drawShadowMask()
        }
    }
    
}

// MARK: - Create SubLayer for Inner and outer Shadow
extension SSNeumorphicLayer {
    
    func neumorphicShadowLayer(shadowColor: CGColor, shadowOffset: CGSize) -> CAShapeLayer {
        let layer = CAShapeLayer()
        layer.backgroundColor = UIColor.clear.cgColor
        layer.fillColor = neumorphicMainColor
        layer.shadowColor = shadowColor
        layer.shadowOffset = shadowOffset
        layer.shadowOpacity = neumorphicShadowOpacity
        layer.shadowRadius = neumorphicShadowRadius
        return layer
    }
    
}

// MARK: - Draw Path and mask
extension SSNeumorphicLayer {
    
    //For inner linne shadow
    fileprivate func drawShadowPath() -> CGPath {
        var shadowBounds = bounds
        shadowBounds = CGRect(x: 0, y: 0, width: bounds.size.width, height: bounds.size.height)
        var path = UIBezierPath()
        
        let cornerRadii: CGSize = CGSize(width: neumorphicCornerRadius, height: neumorphicCornerRadius)
        let cornerRadiusInner = neumorphicCornerRadius
        let cornerRadiiInner: CGSize = CGSize(width: cornerRadiusInner, height: cornerRadiusInner)
        
        if isSelectedLayerView || layerDepthType == .innerShadow {
            path = UIBezierPath(roundedRect: bounds.insetBy(dx: -100, dy: -100),
                                byRoundingCorners: .allCorners,
                                cornerRadii: cornerRadii)
            let innerPath = UIBezierPath(roundedRect: shadowBounds.insetBy(dx: 1, dy: 1),
                                         byRoundingCorners: .allCorners,
                                         cornerRadii: cornerRadiiInner).reversing()
            path.append(innerPath)
        } else {
            path = UIBezierPath(roundedRect: shadowBounds.insetBy(dx: elementDepth/2.0, dy: elementDepth/2.0),
                                byRoundingCorners: .allCorners,
                                cornerRadii: cornerRadiiInner)
        }
        return path.cgPath
    }
    
    fileprivate func drawShadowMask() -> CALayer {
        let layer = CAShapeLayer()
        layer.path = UIBezierPath(roundedRect: bounds, cornerRadius: neumorphicCornerRadius).cgPath
        return layer
    }
    
}


extension CGSize {
    
    var inverse: CGSize {
        .init(width: -1 * width, height: -1 * height)
    }
    
}
