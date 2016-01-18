Pod::Spec.new do |s|
  s.name             = 'ComScore-iOS-SDK'
  s.version          = '3.1510.23'
  s.summary          = 'Application and Streaming Tag library for iOS'
  s.description      = <<-DESC
  This library is used to collect application and streaming tagging data from iOS applications. The library supports apps developed in native Objective C with Apple Xcode or in other languages/tools which can include and use native Objective C libraries.
                       DESC
  s.homepage         = 'https://github.com/comscore/ComScore-iOS-SDK'
  s.license          = 'MIT'
  s.author           = { "comScore" => "www.comscore.com" }
  s.source           = { :git => "https://github.com/comscore/ComScore-iOS-SDK.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/comScore'
  s.platform     = :ios
  s.ios.deployment_target = '6.0'
  s.public_header_files = 'comScore/**/*.h'
  s.preserve_paths = 'comScore/**/*.h'
  s.vendored_libraries = 'comScore/libcomScore.a'
  s.frameworks = 'SystemConfiguration', 'Security'
end
