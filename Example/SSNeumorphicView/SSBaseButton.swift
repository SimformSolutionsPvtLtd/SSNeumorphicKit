//
//  SSBaseButton.swift
//  SSNeumorphicView_Example
//
//  Created by Simform Solutions on 07/07/20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
   
    /// Set corner radius
    /// - Parameter cornerRadius: Corner Radius
    func setHalfCornerRadiusButton() {
        layer.cornerRadius = layer.frame.size.height/2
    }
    
    /// Set images of button
    ///
    /// - Parameters:
    ///   - selected: Selected icon
    ///   - unSelected: Unselected icon
    func setImages(selected: UIImage?, unSelected: UIImage?) {
        self.setImage(selected, for: .selected)
        self.setImage(unSelected, for: .normal)
    }
    
    /// Set titles of button
    ///
    /// - Parameters:
    ///   - selected: Selected Title
    ///   - unSelected: UnSelected Title
    func setTitles(selected: String, unSelected: String) {
        self.setTitle(selected, for: .selected)
        self.setTitle(unSelected, for: .normal)
    }
    
}
