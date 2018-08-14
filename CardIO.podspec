Pod::Spec.new do |spec|
  spec.name             = 'CardIO'
  spec.version          = '6.0.0'
  spec.license          = { type: 'MIT', file: 'LICENSE.md' }
  spec.homepage         = 'https://www.card.io'
  spec.authors          = { 'CardIO' => 'support@paypal.com' }
  spec.summary          = 'Credit card scanning for mobile apps'
  spec.social_media_url = 'https://twitter.com/cardio'
  spec.source           = { :git => 'https://github.com/rongboyang/card.io-iOS-SDK.git', :tag => "#{spec.version}" }

  spec.platform              = :ios, '10.0'
  spec.ios.deployment_target = '10.0'
  spec.requires_arc     = true
  spec.public_header_files   = 'CardIO/*.h'
  spec.source_files          = 'CardIO/*.{h,m}'
  spec.frameworks       = 'Accelerate', 'AVFoundation', 'AudioToolbox', 'CoreMedia', 'CoreVideo', 'MobileCoreServices', 'OpenGLES', 'QuartzCore', 'Security', 'UIKit'
  spec.libraries        = 'c++'
  spec.vendored_libraries = 'CardIO/libCardIO.a', 'CardIO/libopencv_core.a', 'CardIO/libopencv_imgproc.a'
end
