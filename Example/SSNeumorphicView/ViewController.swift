//
//  ViewController.swift
//  SSNeumorphicView
//
//  Created by Simform Solutions on 07/06/2020.
//  Copyright (c) 2020 Simform Solutions. All rights reserved.
//

import UIKit
import SSNeumorphicView

class ViewController: UIViewController {
    
    @IBOutlet weak var txtSSNeumorphic: SSBaseTextField! {
        didSet {
            txtSSNeumorphic.txtDepthType = .innerShadow
        }
    }
    @IBOutlet weak var viewNeumorphic: SSNeumorphicView! {
        didSet {
            viewNeumorphic.viewDepthType = .innerShadow
        }
    }
    @IBOutlet weak var btnNeumorphic: SSNeumorphicButton! {
        didSet {
            btnNeumorphic.btnDepthType = .outerShadow
        }
    }
    @IBOutlet weak var btnRoundedNeumorphic: SSNeumorphicButton! {
        didSet {
            btnRoundedNeumorphic.btnDepthType = .innerShadow
            btnRoundedNeumorphic.layer.masksToBounds = true
            btnRoundedNeumorphic.btnNeumorphicCornerRadius =  btnRoundedNeumorphic.frame.width/2
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if isDarkMode {
            updateUIMode(.darkMode)
        } else {
            updateUIMode(.lightMode)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        switch userInterfaceStyle {
        case .dark:
            updateUIMode(.darkMode)
        case .light:
            updateUIMode(.lightMode)
        default:
            break
        }
    }
    
    @IBAction func tappedOnLike(_ sender: Any) {
        btnRoundedNeumorphic.isSelected = !btnRoundedNeumorphic.isSelected
    }
    
}

extension ViewController {
    
    func updateUIMode(_ mode: SSUIModeType) {
        txtSSNeumorphic.txtUIModeType = mode
        viewNeumorphic.viewUIModeType = mode
        btnNeumorphic.btnUIModeType = mode
        btnRoundedNeumorphic.btnUIModeType = mode
    }
    
}

extension UIViewController {
    
    var isDarkMode: Bool {
        if #available(iOS 13.0, *) {
            return self.traitCollection.userInterfaceStyle == .dark
        }
        else {
            return false
        }
    }

}
