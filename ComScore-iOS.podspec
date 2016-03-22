Pod::Spec.new do |s|
  s.name             = 'ComScore-iOS'
  s.version          = '3.1510.23'
  s.summary          = 'Official Application and Streaming Tag library for iOS from comScore'
  s.description      = <<-DESC
  This library is used to collect application and streaming tagging data from iOS applications. The library supports apps developed in native Objective C with Apple Xcode or in other languages/tools which can include and use native Objective C libraries.
                       DESC
  s.homepage         = 'https://github.com/comscore/ComScore-iOS-SDK'
  s.license          = 'Custom'
  s.author           = { "comScore" => "www.comscore.com" }
  s.source           = { :git => "https://github.com/comscore/ComScore-iOS-SDK.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/comScore'
  s.platform     = :ios
  s.ios.deployment_target = '6.0'
  s.public_header_files = 'comScore/**/*.h'
  s.source_files = 'comScore/**/*.h', '*.m'
  s.preserve_paths = 'comScore/**/*.h'
  s.vendored_libraries = 'comScore/libcomScore.a'
  s.frameworks = 'SystemConfiguration', 'Security'
  s.module_map = 'comScore/ComScore.modulemap'
  s.module_name = 'ComScore'

end
