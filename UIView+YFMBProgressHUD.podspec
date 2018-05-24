#
# Be sure to run `pod lib lint UIView-MBProgressHUD.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UIView+YFMBProgressHUD'
  s.version          = '0.2.0'
  s.summary          = 'based MBProgressHUD, easy-to-use'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
based MBProgressHUD, easy-to-use, show activity、message、complete handle
                       DESC

  s.homepage         = 'https://github.com/yonfong/UIView-MBProgressHUD.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yonfeng' => 'yonfeng.zhang@gmail.com' }
  s.source           = { :git => 'https://github.com/yonfong/UIView-MBProgressHUD.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'UIView-MBProgressHUD/Classes/**/*'
  
  # s.resource_bundles = {
  #   'UIView-MBProgressHUD' => ['UIView-MBProgressHUD/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'MBProgressHUD'
end
