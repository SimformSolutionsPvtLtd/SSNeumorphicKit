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
    @State var mainColor = Color.Neumorphic.main
    @State var darkShadow = Color.Neumorphic.darkShadow
    @State var lightShadow = Color.Neumorphic.lightShadow
    
    private let purple = Color(red: 0.749, green: 0.675, blue: 0.992)
    private let purpleLightVarient = Color(red: 0.823, green: 0.773, blue: 0.996)
    private let purpleDarkVarient = Color(red: 0.224, green: 0.204, blue: 0.298)
    
    // MARK: - Body
    
    var body: some View {
        
            ZStack {
                
                mainColor
                
                ScrollView {
                    
                    VStack(spacing: 30) {
                        Spacer().frame(height: 65)
                        HStack(spacing: 50) {
                            RoundedRectangle(cornerRadius: 25)
                                .fill(mainColor)
                                .frame(width: 150, height: 150)
                                .innerShadow(RoundedRectangle(cornerRadius: 25),
                                             darkShadow: darkShadow,
                                             lightShadow: lightShadow)
                            RoundedRectangle(cornerRadius: 25)
                                .fill(mainColor)
                                .frame(width: 150, height: 150)
                                .outerShadow(darkShadow: darkShadow,
                                             lightShadow: lightShadow)
                        }
                        
                        HStack(spacing: 50) {
                            Circle()
                                .fill(mainColor)
                                .frame(width: 150, height: 150)
                                .innerShadow(Circle(),
                                             darkShadow: darkShadow,
                                             lightShadow: lightShadow)
                            Circle()
                                .fill(mainColor)
                                .frame(width: 150, height: 150)
                                .outerShadow(darkShadow: darkShadow,
                                             lightShadow: lightShadow)
                        }
                        
                        HStack(spacing: 50) {
                            Button(action: {
                                print("Button tapped")
                            }) {
                                Text("Tap me!")
                            }
                            .buttonStyle(NMButtonStyle(shape: RoundedRectangle(cornerRadius: 20),
                                                       primaryColor: mainColor,
                                                       lightColor: lightShadow,
                                                       darkColor: darkShadow))
                            
                            Button(action: {
                                print("Button tapped")
                            }) {
                                Image(systemName: "heart.fill").font(.system(size: 30))
                            }
                            .buttonStyle(NMButtonStyle(shape: Circle(),
                                                       primaryColor: mainColor,
                                                       lightColor: lightShadow,
                                                       darkColor: darkShadow))
                        }
                        
                        TextField("Enter text", text: $text)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 30)
                                .fill(mainColor)
                                .innerShadow(RoundedRectangle(cornerRadius: 30),
                                             darkShadow: darkShadow,
                                             lightShadow: lightShadow), alignment: .center)
                            .padding()
                        if #available(iOS 14.0, *) {
                            Toggle("Toggle: ", isOn: $isOn)
                                .toggleStyle(
                                    NMToggleStyle(
                                        tintColor: .green,
                                        offTintColor: mainColor,
                                        offDarkShadow: darkShadow,
                                        offLightShadow: lightShadow,
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
                        Button("Coloured Demo") {
                            changeColor()
                        }
                        .buttonStyle(NMButtonStyle(shape: RoundedRectangle(cornerRadius: 5),
                                                    padding: 20,
                                                    primaryColor: mainColor,
                                                    lightColor: lightShadow,
                                                    darkColor: darkShadow))
                        Spacer().frame(height: 30)
                    }
                }
            }
            .edgesIgnoringSafeArea(.all)
    }
    
    // MARK: - Functions
    
    /// Toggles between default neumorphic theme and Colored NeumorphicTheme
    private func changeColor() {
        if(mainColor == purple) {
            mainColor = Color.Neumorphic.main
            darkShadow = Color.Neumorphic.darkShadow
            lightShadow = Color.Neumorphic.lightShadow
        } else {
            mainColor = purple
            darkShadow = purpleDarkVarient
            lightShadow = purpleLightVarient
        }
    }
}
