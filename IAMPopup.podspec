#
# Be sure to run `pod lib lint IAMPopup.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IAMPopup'
  s.version          = '0.1.0'
  s.summary          = 'IAMPopup is a simple class for expressing custom popup in various forms.'
  s.description      = <<-DESC
  
IAMPopup is a simple class for expressing custom popup in various forms. This includes where to display the popup and space to decorate the View.
                        DESC

  s.homepage         = 'https://github.com/camosss/IAMPopup'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'camosss' => 'camosss777@gmail.com' }
  s.source           = { :git => 'https://github.com/camosss/IAMPopup.git', :tag => s.version.to_s }
  s.swift_version = "5.0"
  s.ios.deployment_target = '13.0'
  s.source_files = 'IAMPopup/Classes/**/*'
  s.frameworks = 'UIKit'
end
