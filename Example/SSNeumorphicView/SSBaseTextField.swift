//
//  SSBaseTextField.swift
//  SSNeumorphicView_Example
//
//  Created by Simform Solutions on 07/07/20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation
import UIKit
import SSNeumorphicView

class SSBaseTextField: SSNeumorphicTextField {
    
    // MARK: - IBInspectables
    /// Corner Radius
    @IBInspectable internal var cornerRadius: CGFloat = 3 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
    /// Border Width
    @IBInspectable internal var borderWidth: CGFloat = 1 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
   
    /// Left padding
    @IBInspectable internal var leftPadding: CGFloat = 15.0 {
        didSet {
            self.updateLeftView()
        }
    }
    
    /// Right Image Height
    @IBInspectable internal var imgRightPlaceHeight = 20 {
        didSet {
            self.updateLeftView()
        }
    }
    
    /// Right Image Width
    @IBInspectable internal var imgRightPlaceWidth = 20 {
        didSet {
            self.updateLeftView()
        }
    }
    
    /// Right Image Height
    @IBInspectable internal var imgLeftPlaceHeight = 20 {
        didSet {
            self.updateLeftView()
        }
    }
    
    /// Right Image Width
    @IBInspectable internal var imgLeftPlaceWidth = 20 {
        didSet {
            self.updateLeftView()
        }
    }
    
    /// Left Image
    @IBInspectable internal var leftImage: UIImage? {
        didSet {
            self.updateLeftView()
        }
    }
    
    @IBInspectable internal var rightPadding: CGFloat = 12.0 {
        didSet {
            self.updateRightView()
        }
    }
    
    /// Right Image
    @IBInspectable internal var rightImage: UIImage? {
        didSet {
            self.updateRightView()
        }
    }
    
    /// Placeholder Color
    @IBInspectable var placeholderColor: UIColor? {
        didSet {
            self.setPlaceholderColor()
        }
    }
    
    // MARK: - variables
    
    /// keyboardAppearanceMode default is `dark`
    var keyboardAppearanceMode: UIKeyboardAppearance = .light {
        didSet {
            self.setKeyboardAppearance()
        }
    }
    
    // MARK: - Overrides
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setKeyboardAppearance()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // MARK: - Functions
    
    /// Set keyboard appearance
    fileprivate func setKeyboardAppearance() {
        self.keyboardAppearance = keyboardAppearanceMode
    }
    
    fileprivate func updateRightView() {
        if let image = rightImage {
            self.rightViewMode = UITextField.ViewMode.always
            let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: imgRightPlaceWidth, height: imgRightPlaceHeight))
            let view = UIView(frame: CGRect(x: 0, y: 0, width: rightPadding + imageView.bounds.width + 9, height: 0))
            imageView.center.y = view.center.y
            imageView.contentMode = .scaleAspectFit
            imageView.image = image
            view.addSubview(imageView)
            self.rightView = view
        } else if rightPadding != 0 && rightImage == nil {
            self.rightViewMode = UITextField.ViewMode.always
            self.rightView = UIView(frame: CGRect(x: 0, y: 0, width: leftPadding, height: 0))
        } else {
            self.rightViewMode = UITextField.ViewMode.never
            self.rightView = nil
        }
    }
    
    /// Update left view
    fileprivate func updateLeftView() {
        if let image = leftImage {
            self.leftViewMode = UITextField.ViewMode.always
            let imageView = UIImageView(frame: CGRect(x: Int(leftPadding), y: 0, width: imgLeftPlaceWidth, height: imgLeftPlaceHeight))
            let view = UIView(frame: CGRect(x: 0, y: 0, width: leftPadding + imageView.bounds.width + 9, height: 0))
            imageView.center.y = view.center.y
            imageView.contentMode = .scaleAspectFit
            imageView.image = image
            view.addSubview(imageView)
            self.leftView = view
        } else if leftPadding != 0 && leftImage == nil {
            self.leftViewMode = UITextField.ViewMode.always
            self.leftView = UIView(frame: CGRect(x: 0, y: 0, width: leftPadding, height: 0))
        } else {
            self.leftViewMode = UITextField.ViewMode.never
            self.leftView = nil
        }
    }
    
    fileprivate func setPlaceholderColor() {
        if let placeholder = placeholder, let color = placeholderColor {
            self.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor: color])
        }
    }
    
}// End of Class
