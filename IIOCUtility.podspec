#
# Be sure to run `pod lib lint IIOCUtility.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IIOCUtility'
  s.version          = '0.4.0'
  s.summary          = 'IIOCUtility.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
1.AccessToken
2.GetDevice
3.RouteAlert
4.Utilities
5.Impcache
6.IIWCDB
7.IMPUser & EnterpriseModel
                       DESC

  s.homepage         = 'https://github.com/hatjs880328s/IIOCUtility'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'hatjs880328s' => 'shanwzh@inspur.com' }
  s.source           = { :git => 'https://github.com/hatjs880328s/IIOCUtility.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  # s.source_files = 'IIOCUtility/Classes/**/*'
  
  # s.resource_bundles = {
  #   'IIOCUtility' => ['IIOCUtility/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'

  s.subspec 'AccessToken' do |ss|
      ss.source_files = 'IIOCUtility/Classes/AccessToken/*.{h,m}'
  end

  s.subspec 'GETDevice' do |ss|
      ss.source_files = 'IIOCUtility/Classes/GETDevice/*.{h,m}'
  end

  s.subspec 'IIRouteAlert' do |ss|
      ss.source_files = 'IIOCUtility/Classes/IIRouteAlert/*.{h,m}'
  end

  s.subspec 'UTI' do |ss|
      ss.source_files = 'IIOCUtility/Classes/UTI/*.{h,m}'
  end

  s.subspec 'Cache' do |ss|
      ss.source_files = 'IIOCUtility/Classes/Cache/*.{h,m,mm,txt}'
  end


  s.frameworks = 'UIKit', 'AVFoundation', 'WebKit'
  s.dependency 'SDWebImage', '~>4.4.5'
  s.dependency 'III18N'
  s.dependency 'MJExtension'
  s.dependency 'FMDB'
  s.dependency 'Toast'
  s.dependency 'WCDB'
end
