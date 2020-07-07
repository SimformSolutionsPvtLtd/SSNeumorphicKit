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
            btnNeumorphic.btnDepthType = .innerShadow
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
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func tappedOnLike(_ sender: Any) {
        btnRoundedNeumorphic.isSelected = !btnRoundedNeumorphic.isSelected
    }
    
}

