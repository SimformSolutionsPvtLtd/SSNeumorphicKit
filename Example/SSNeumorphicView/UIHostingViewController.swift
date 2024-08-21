//
//  UIHostingViewController.swift
//  SSNeumorphicView
//
//  Created by Simform Solutions on 31/07/24.
//  Copyright © 2024 Simform Solutions. All rights reserved.
//

import SwiftUI
import UIKit

class UIHostingViewController: UIViewController {
    
    // MARK: - Variables
    var hostViewController = UIHostingController(rootView: ContentView())
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        addChild(hostViewController)
        view.addSubview(hostViewController.view)
        setUpConstraints()
    }
    
    // MARK: - Functions
    private func setUpConstraints() {
        hostViewController.view.translatesAutoresizingMaskIntoConstraints = false
        hostViewController.view.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        hostViewController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        hostViewController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        hostViewController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
}
