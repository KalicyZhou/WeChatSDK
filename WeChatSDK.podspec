#
# Be sure to run `pod spec lint wechat.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about the attributes see http://docs.cocoapods.org/specification.html
#
Pod::Spec.new do |s|
  s.name         = "WeChatSDK"
  s.version      = "0.0.6"
  s.summary      = "A short description of wechat."
  s.homepage     = "http://EXAMPLE/wechat"
  s.source       = { :git => "https://github.com/KalicyZhou/WeChatSDK.git" }
  s.source_files = 'Library/*.h'
  s.framework  = 'SystemConfiguration'
s.subspec 'Debug-iphoneos' do |s_debug_iphoneos|
    s_debug_iphoneos.ios.vendored_library = "Library/libWeChatSDK.a"
  end
  
  s.subspec 'Debug-iphonesimulator' do |s_debug_iphonesim|
    s_debug_iphonesim.ios.vendored_library = "Library/libWeChatSDKSim.a"
  end
  
  s.subspec 'Release-iphoneos' do |s_release_iphoneos|
    s_release_iphoneos.ios.vendored_library = "Library/libWeChatSDK.a"
  end
  
  s.subspec 'Release-iphonesimulator' do |s_release_iphonesim|
  s_release_iphonesim.ios.vendored_library = "Library/Simulator/libWeChatSDKSim.a"
  end
  s.library   = 'z', 'WeChatSDK', 'sqlite3.0'
  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/WeChatSDK/Library"'}
end
