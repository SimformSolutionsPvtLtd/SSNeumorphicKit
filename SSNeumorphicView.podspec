#
# Be sure to run `pod lib lint SSNeumorphicView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SSNeumorphicView'
  s.version          = '1.0.0'
  s.summary          = 'A sophisticated and flexible library for iOS that integrates the Neumorphic design style into your app’s user interface.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!


 s.description = <<-DESC
SSNeumorphicView is a versatile iOS library that integrates the popular Neumorphic design style into your app’s UI. Neumorphism, with its soft shadows and depth, creates an elegant embossed effect, making your UI components visually engaging.

SSNeumorphicView supports both UIKit and SwiftUI, offering extensive customization for shadow colors, depths, and styles. It’s easy to use and backward compatible with iOS 13, ensuring a modern and consistent user experience across devices.
DESC

  s.homepage         = 'https://github.com/SimformSolutionsPvtLtd/SSNeumorphicKit.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }

  s.author           = { 'Simform Solutions' => 'developer@simform.com' }

  s.source           = { :git => 'https://github.com/SimformSolutionsPvtLtd/SSNeumorphicKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'

  s.swift_version = '5.0'
  
  s.source_files = ['Sources/SSNeumorphicView/Classes/**/*']


  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit'
   s.weak_frameworks = 'SwiftUI'
end
