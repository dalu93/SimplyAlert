#
#  Be sure to run `pod spec lint SwiftyAlert.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "SimplyAlert"
  s.version      = "1.0"
  s.summary      = "Swifty way to use `UIAlertController`"

  s.description  = <<-DESC
                SimplyAlert is a simple extension around `UIAlertAction` and `UIAlertController` that provides a better swifty experience using UIKit
                   DESC

  s.homepage     = "https://github.com/dalu93/SimplyAlert"

  s.license      = "MIT"

  s.author             = { "Luca D'Alberti" => "dalberti.luca93@gmail.com" }
  s.social_media_url   = "https://twitter.com/DAlbertiLuca"

  s.platform     = :ios
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/dalu93/SimplyAlert", :tag => s.version.to_s }

  s.source_files  = "Source/*.swift"

  s.requires_arc = true

end
