# SSNeumorphicView

SSNeumorphicView is to build a Neumorphism view, button, and text filed in iOS.

[![Swift Version][swift-image]][swift-url]
[![Build Status][travis-image]][travis-url]
[![License][license-image]][license-url]

<img src="https://github.com/SimformSolutionsPvtLtd/SSNeumorphicKit/blob/feature/ssneumophickit/Screenshots/image.jpg">

# Features!
- Create Neumorphic view, button and text field using the SSNeumorphicView

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

# Requirements
- iOS 13.0+
- Xcode 11+

# Installation
 **CocoaPods**
    You can use CocoaPods to install SSNeumorphicView by adding it to your Podfile:

       use_frameworks!
       pod 'SSNeumorphicView'

# Usage example

## How to use with UIKit and Storyboard:

In the storyboard add a UIView and change its class to SSNeumorphicView

   <img src="https://github.com/SimformSolutionsPvtLtd/SSNeumorphicKit/blob/feature/ssneumophickit/Screenshots/Screenshot%202020-07-07%20at%207.22.23%20PM.png">
 
Import Neumorphic package to your view.
        
        import SSNeumorphicView

Create NeumorphicView with the outer shadow.

 <img src="https://github.com/SimformSolutionsPvtLtd/SSNeumorphicKit/blob/feature/ssneumophickit/Screenshots/iPhone11Pro%20MaxViewOuter.png" width="40%">

    @IBOutlet weak var viewNeumorphic: SSNeumorphicView! {
        didSet {
            viewNeumorphic.viewDepthType = .outerShadow
        }
    }
        
Create neumorphic text field with the Inner shadow.

<img src="https://github.com/SimformSolutionsPvtLtd/SSNeumorphicKit/blob/feature/ssneumophickit/Screenshots/iPhone11Pro%20MaxTextfiled.png" width="40%">
 
    @IBOutlet weak var txtSSNeumorphic: SSBaseTextField! {
        didSet {
            txtSSNeumorphic.txtDepthType = .innerShadow
        }
    }

Create neumorphic button with the Outer shadow.

<img src="https://github.com/SimformSolutionsPvtLtd/SSNeumorphicKit/blob/feature/ssneumophickit/Screenshots/iPhone11ProMaxButtonOuter.png" width="40%">
 
    @IBOutlet weak var btnNeumorphic: SSNeumorphicButton! {
        didSet {
            btnNeumorphic.btnDepthType = .outerShadow
        }
    }
    
Create neumorphic rounded button with the inner shadow.

   <img src="https://github.com/SimformSolutionsPvtLtd/SSNeumorphicKit/blob/feature/ssneumophickit/Screenshots/iPhone11ProMaxRoundedButton.png" width="40%">

    @IBOutlet weak var btnRoundedNeumorphic: SSNeumorphicButton! {
        didSet {
            btnRoundedNeumorphic.btnDepthType = .innerShadow
            btnRoundedNeumorphic.layer.masksToBounds = true
            btnRoundedNeumorphic.btnNeumorphicCornerRadius =  btnRoundedNeumorphic.frame.width/2
        }
    }
    
## How to Use with SwiftUI:
### Import Neumorphic package to your view.
        
    import SSNeumorphicView

### **Create Neumorphic Shape with [Inner shadow modifier](Sources/SSNeumorphicView/Classes/SwiftUI/Modifiers/InnerShadowModifier.swift)**.
| <center> Light Mode</center> | <center> Dark Mode </center> |
|----------|----------|
|<img src="Screenshots/SwiftUI-Demo-Screen-Shots/shape-light-inner-shadow.png">  | <img src="Screenshots/SwiftUI-Demo-Screen-Shots/shape-dark-inner-shadow.png"  >   | 

```
var body: some View {
        
    ZStack {
            
        // Apply main background color
        mainColor   
            
        VStack {
            RoundedRectangle(cornerRadius: 25)

                // Fill the shape with samecolor as background
                .fill(mainColor)    
                .frame(width: 150, height: 150)

                 // Apply inner shadow modifier
                .innerShadow(RoundedRectangle(cornerRadius: 25),   
                                darkShadow: darkShadow, // Pass dark shadow color for the innerShadow
                                lightShadow: lightShadow)   // Pass light shadow color for the outerShadow
        }
    }
    .edgesIgnoringSafeArea(.all)
}
```

### **Create Neumorphic Shape with [Outer shadow modifier](Sources/SSNeumorphicView/Classes/SwiftUI/Modifiers/OuterShadowModifier.swift)**.
| <center> Light Mode</center> | <center> Dark Mode </center> |
|----------|----------|
|<img src="Screenshots/SwiftUI-Demo-Screen-Shots/shape-light-outer-shadow.png"   >  | <img src="Screenshots/SwiftUI-Demo-Screen-Shots/shape-dark-outer-shadow.png"  >   | 

```
var body: some View {
        
        ZStack {
            
            // Apply main background color
            mainColor
            
            VStack {
                RoundedRectangle(cornerRadius: 25)
                
                    // Fill the shape with same color as background
                    .fill(mainColor)
                    .frame(width: 150, height: 150)
                
                    // Apply the outer shadow modifier and pass the dark and light shadow colors
                    .outerShadow(darkShadow: darkShadow, lightShadow: lightShadow)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
```

### **Create Neumorphic Button Using [NMButtonStyle](Sources/SSNeumorphicView/Classes/SwiftUI/Styles/NMButtonStyle.swift)**.
| <center> Light Mode</center> | <center> Dark Mode </center> |
|----------|----------|
|<img src="Screenshots/SwiftUI-Demo-Screen-Shots/button-light.png"   >  | <img src="Screenshots/SwiftUI-Demo-Screen-Shots/button-dark.png"  >   | 

```
var body: some View {
        
        ZStack {
            
            // Apply main background color
            mainColor
            
            VStack {
                Button(action: {
                    print("Button tapped")
                }) {
                    Text("Tap me!")
                }
                
                // Use Custom NMButtonStyle to make the button Neumorphic.
                .buttonStyle(NMButtonStyle(shape: RoundedRectangle(cornerRadius: 20),
                                           primaryColor: mainColor,
                                           lightColor: lightShadow,
                                           darkColor: darkShadow))
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
```
**NOTE:** To fully customize the NMButtonStyle checkout [NMButtonStyleGuide.md](Docs/NMButtonStyleGuide.md).

### **Create Neumorphic Image Button using [NMButtonStyle](Sources/SSNeumorphicView/Classes/SwiftUI/Styles/NMButtonStyle.swift)**.
| <center> Light Mode</center> | <center> Dark Mode </center> |
|----------|----------|
|<img src="Screenshots/SwiftUI-Demo-Screen-Shots/buttom-heart-light.png"   >  | <img src="Screenshots/SwiftUI-Demo-Screen-Shots/button-heart-dark.png"  >   | 

```
var body: some View {
        
        ZStack {
            
            // Apply main background color
            mainColor
            
            VStack {
                Button(action: {
                    print("Button tapped")
                }) {
                    Image(systemName: "heart.fill")
                        .font(.title)
                }

                // Use Custom NMButtonStyle to make the button Neumorphic.
                .buttonStyle(NMButtonStyle(shape: Circle(),
                                           primaryColor: mainColor,
                                           lightColor: lightShadow,
                                           darkColor: darkShadow))
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
```
**NOTE:** You can also create your own custom style with combination of outer and inner shadow modifiers.

### **Create Neumorphic Text Field with [Inner Shadow Modifier](Sources/SSNeumorphicView/Classes/SwiftUI/Modifiers/InnerShadowModifier.swift)**.
| <center> Light Mode</center> | <center> Dark Mode </center> |
|----------|----------|
|<img src="Screenshots/SwiftUI-Demo-Screen-Shots/text-field-inner-shadow-light.png"   >  | <img src="Screenshots/SwiftUI-Demo-Screen-Shots/text-field-inner-shadow-dark.png"  >   | 

```
var body: some View {
        
        ZStack {
            
            // Apply main background color
            mainColor
            
            VStack {
                TextField("Enter text", text: $text)
                    .padding()
                
                    // Apply the Shadow shape as background of text field.
                    .background(RoundedRectangle(cornerRadius: 30)
                        .fill(mainColor)
                        .innerShadow(RoundedRectangle(cornerRadius: 30),
                                     darkShadow: darkShadow,
                                     lightShadow: lightShadow), alignment: .center)
                    .padding()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
```

### **Create Neumorphic Text Field with [Outer shadow modifier](Sources/SSNeumorphicView/Classes/SwiftUI/Modifiers/OuterShadowModifier.swift)**.
| <center> Light Mode</center> | <center> Dark Mode </center> |
|----------|----------|
|<img src="Screenshots/SwiftUI-Demo-Screen-Shots/text-field-outer-shadow-light.png"   >  | <img src="Screenshots/SwiftUI-Demo-Screen-Shots/text-field-outer-shadow-dark.png"  >   | 

```
var body: some View {
        
        ZStack {
            
            // Apply main background color
            mainColor
            
            VStack {
                TextField("Enter text", text: $text)
                    .padding()
                
                    // Apply the Shadow shape as background of text field.
                    .background(RoundedRectangle(cornerRadius: 30)
                        .fill(mainColor)
                        .outerShadow(darkShadow: darkShadow,
                                     lightShadow: lightShadow), alignment: .center)
                    .padding()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
```

### **Create Neumorphic Toggle using [NMToggleStyle](Sources/SSNeumorphicView/Classes/SwiftUI/Styles/NMToggleStyle.swift)**.
<img src="GIFs/toggle-demo.gif" alt="Alt Text" width="400"/>

```
var body: some View {
        
        ZStack {
            
            // Apply main background color
            mainColor
            
            VStack {
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
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
```
**NOTE:** To fully customize the NMToggleStyle checkout [NMToggleStyleGuide.md](Docs/NMToggleStyleGuide.md).

## License

SSNeumorphicView is available under the MIT license. See the [LICENSE](./LICENSE) file for more info.


[swift-image]:https://img.shields.io/badge/swift-5.0-orange.svg
[swift-url]: https://swift.org/
[license-image]: https://img.shields.io/badge/License-MIT-blue.svg
[license-url]: LICENSE
[travis-image]: https://img.shields.io/travis/dbader/node-datadog-metrics/master.svg?style=flat-square
[travis-url]: https://travis-ci.org/dbader/node-datadog-metrics
