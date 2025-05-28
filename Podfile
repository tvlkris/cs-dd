# Uncomment the next line to define a global platform for your project
platform :ios, '15.0'

source 'git@github.com:traveloka/Specs.git'

target 'CS_DD' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for CS_DD
  # pod 'CS_iOS_SDK_STATIC', '= 4.41.3'
  # pod 'DatadogInternal', '= 2.20.0'
  # pod 'DatadogCore', '= 2.20.0'
  # pod 'DatadogLogs', '= 2.20.0'
  # pod 'DatadogRUM', '= 2.20.0'
  # pod 'DatadogTrace', '= 2.20.0'

  # Other third-party SDKs
  pod 'Adjust', '= 4.32.1'
  pod 'AFNetworkActivityLogger', '= 4.0.0-tvlk'
  pod 'AFNetworking', '= 4.0.1'
  pod 'Amplitude', '= 8.10.0'
  pod 'AnalyticsConnector', '= 1.0.1'
  pod 'AppAuth', '= 1.6.2'
  pod 'Appboy-iOS-SDK', '= 4.4.4'
  pod 'Appboy-Push-Story', '= 4.0.0'
  pod 'Bolts', '= 1.9.0'
  pod 'Bolts-Swift', '= 1.5.0'
  pod 'CocoaMQTT', '= 2.0.8'
  pod 'CS_iOS_SDK_STATIC', '= 4.41.3'
  pod 'CSCrashReporter', '= 1.0.1'
  pod 'CSSwiftProtobuf', '= 1.28.2'
  pod 'DatadogCore', '= 2.20.0'
  pod 'DatadogInternal', '= 2.20.0'
  pod 'DatadogLogs', '= 2.20.0'
  pod 'DatadogRUM', '= 2.20.0'
  pod 'DatadogTrace', '= 2.20.0'
  pod 'DateTools', '= 2.0.0'
  pod 'DeepLinkKit', '= 1.5.3-tvlk'
  pod 'DTCoreText', '= 1.6.23-tvlk-2'
  pod 'DTFoundation', '= 1.7.16-tvlk'
  pod 'Factory', '= 2.1.4'
  pod 'FLEX', '= 5.22.10'
  pod 'GDPerformanceView', '= 1.3.1-tvlk'
  pod 'GoogleSignIn', '= 6.2.4'
  pod 'GoogleToolboxForMac', '= 3.0.0'
  pod 'GSPlayer', '= 0.2.25'
  pod 'GTMAppAuth', '= 1.3.1'
  pod 'GTMSessionFetcher', '= 2.3.0'
  pod 'HaishinKit', '= 1.4.3'
  pod 'IGListDiffKit', '= 4.0.0'
  pod 'IGListKit', '= 4.0.0'
  pod 'ios-rn-prebuilt', '= 2.3.18'
  pod 'KMNavigationBarTransition', '= 1.1.12-tvlk'
  pod 'LineSDKSwift', '= 5.11.1'
  pod 'Logboard', '= 2.3.1'
  pod 'lottie-ios', '= 4.3.1'
  pod 'MqttCocoaAsyncSocket', '= 1.0.8'
  pod 'naveridlogin-sdk-ios', '= 4.2.3'
  pod 'Nimble', '= 12.1.0'
  pod 'OCMock', '= 3.4.1'
  pod 'OHHTTPStubs', '= 9.0.0'
  pod 'OpenTelemetrySwiftApi', '= 1.6.0'
  pod 'PerformanceSuite', '= 1.4.2-tvlk-2'
  pod 'PINCache', '= 3.0.1'
  pod 'PINOperation', '= 1.2.2'
  pod 'QueueITLibrary', '= 3.4.4'
  pod 'RadarSDK', '= 3.8.12-tvlk'
  pod 'SAMKeychain', '= 1.5.2'
  pod 'SDWebImage', '= 5.9.4'
  pod 'SendbirdChatSDK', '= 4.2.4'
  pod 'Sift', '= 1.0.1'
  pod 'SnapKit', '= 5.6.0'
  pod 'Starscream', '= 4.0.4'
  pod 'SwiftLint', '= 0.51.0'
  pod 'Texture/Core', '= 11.38-tvlk'
  pod 'TVLMasonry', '= 1.1.1'
  pod 'xcbeautify', '= 0.13.0'
  pod 'Xendit', '= 2.1.8-tvlk'
  pod 'youtube-ios-player-helper', '= 1.0.4'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    next if target.to_s == 'CSSwiftProtobuf'
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '15.0'
      config.build_settings['SWIFT_VERSION'] = '5.0'
    end
  end
end
