#
# Be sure to run `pod spec lint wechat.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about the attributes see http://docs.cocoapods.org/specification.html
#
Pod::Spec.new do |s|
  s.name         = "WeChatSDK"
  s.version      = "0.0.5"
  s.summary      = "A short description of wechat."
  s.homepage     = "http://EXAMPLE/wechat"
  s.source       = { :git => "https://github.com/KalicyZhou/WeChatSDK.git" }
  s.source_files = 'Library/*.h'
  s.preserve_paths = "Library/*.a"
  s.library   = 'WeChatSDK'
  s.vendored_libraries = 'Library/libWeChatSDK.a'
  s.library   = 'z', 'WeChatSDK'
  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/WeChatSDK/Library"'}
end
