//
//  UIView+Extension.swift
//  SSNeumorphicView_Example
//
//  Created by Simform Solutions on 07/07/20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    /// Set view as rounded
    func setRounded() {
        layer.cornerRadius = bounds.height / 2
        clipsToBounds = true
    }
    
}
