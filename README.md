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
- iOS 10.0+
- Xcode 9+

# Installation
 **CocoaPods**
    You can use CocoaPods to install SSNeumorphicView by adding it to your Podfile:

       use_frameworks!
       pod 'SSNeumorphicView'

# Usage example

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
   
## TODO

Dark mode support 

## License

SSNeumorphicView is available under the MIT license. See the LICENSE file for more info.


[swift-image]:https://img.shields.io/badge/swift-5.0-orange.svg
[swift-url]: https://swift.org/
[license-image]: https://img.shields.io/badge/License-MIT-blue.svg
[license-url]: LICENSE
[travis-image]: https://img.shields.io/travis/dbader/node-datadog-metrics/master.svg?style=flat-square
[travis-url]: https://travis-ci.org/dbader/node-datadog-metrics
