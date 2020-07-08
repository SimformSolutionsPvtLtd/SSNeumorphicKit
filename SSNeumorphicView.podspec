#
# Be sure to run `pod lib lint SSNeumorphicView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SSNeumorphicView'
  s.version          = '0.1.0'
  s.summary          = 'SSNeumorphicView is to build a Neumorphism view, button, and text filed in iOS.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'SSNeumorphicView is to build a Neumorphism view, button, and text filed in iOS.'

  s.homepage         = 'https://github.com/simformsolutions/SSNeumorphicView.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'simform solutions' => 'mobile@simformsolutions.com' }
  s.source           = { :git => 'https://github.com/simformsolutions/SSNeumorphicView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = ['SSNeumorphicView/Classes/**/*','SSNeumorphicView/Frameworks/*.xcframework']
  
  s.resource_bundles = {
     'SSNeumorphicView' => ['SSNeumorphicView/Frameworks/*.xcframework']
   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit'
end
