//
//  ContentView.swift
//  SSNeumorphicView
//
//  Created by Simform Solutions on 31/07/24.
//  Copyright © 2024 Simform Solutions. All rights reserved.
//

import SwiftUI
import SSNeumorphicView

struct ContentView: View {
    
    // MARK: - Variables
    
    @State var text = ""
    @State var isOn = false
    
    // MARK: - Body
    
    var body: some View {
        
        ZStack {
            
            Color.Neumorphic.main
            
            VStack(spacing: 30) {
                
                HStack(spacing: 50) {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.Neumorphic.main)
                        .frame(width: 150, height: 150)
                        .innerShadow(RoundedRectangle(cornerRadius: 25))
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.Neumorphic.main)
                        .frame(width: 150, height: 150)
                        .outerShadow()
                }
                
                HStack(spacing: 50) {
                    Circle()
                        .fill(Color.Neumorphic.main)
                        .frame(width: 150, height: 150)
                        .innerShadow(Circle())
                    Circle()
                        .fill(Color.Neumorphic.main)
                        .frame(width: 150, height: 150)
                        .outerShadow()
                }
                
                HStack(spacing: 50) {
                    Button(action: {
                        print("Button tapped")
                    }) {
                        Text("Tap me!")
                    }
                    .buttonStyle(NMButtonStyle(shape: RoundedRectangle(cornerRadius: 20)))
                    
                    Button(action: {
                        print("Button tapped")
                    }) {
                        Image(systemName: "heart.fill").font(.system(size: 30))
                    }
                    .buttonStyle(NMButtonStyle(shape: Circle()))
                }
                
                TextField("Enter text", text: $text)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 30)
                        .fill(Color.Neumorphic.main)
                        .innerShadow(RoundedRectangle(cornerRadius: 30)), alignment: .center)
                    .padding()
                if #available(iOS 14.0, *) {
                    Toggle("Toggle: ", isOn: $isOn)
                        .toggleStyle(
                            NMToggleStyle(
                                tintColor: .green,
                                hideLabel: false
                            )
                        )
                        .padding()
                } else {
                    Toggle("Toggle: ", isOn: $isOn)
                        .toggleStyle(
                            NMToggleStyle(
                                tintColor: .red,
                                hideLabel: false
                            )
                        )
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}
