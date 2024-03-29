#
# Be sure to run `pod lib lint VPZQMD.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'VPZQMD'
  s.version          = '0.4.1'
  s.summary          = 'A short description of VPZQMD.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/ndkGit/ZQMDSdk'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ndk' => 'nidangkun@foxmail.com' }
  s.source           = { :git => 'https://github.com/ndkGit/ZQMDSdk.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.vendored_frameworks = 'VPZQMD/Classes/*.framework'
   s.frameworks = 'UIKit', 'Foundation' , 'CoreMedia', 'AVFoundation', 'CFNetwork', 'Security'
    s.resource     = 'VPZQMD/Assets/VPZQMD.bundle'
 
 s.dependency 'AFNetworking','~>3.2.1'
 s.dependency 'Masonry'
 s.dependency 'IQKeyboardManager','~>6.5.5'
 s.dependency 'MBProgressHUD', '~> 1.2.0'
 s.dependency 'MJRefresh', '~> 3.3.1'
 s.dependency 'SDWebImage','~>5.1.0'
 s.dependency 'Reachability'
 s.dependency 'MJExtension', '~> 3.0.13'
 s.dependency 'AvoidCrash', '~> 2.5.2'
 

 s.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }
  # s.resource_bundles = {
  #   'VPZQMD' => ['VPZQMD/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
