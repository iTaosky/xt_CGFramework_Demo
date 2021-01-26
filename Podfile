# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'xt_CGFramework_Demo' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for xt_CGFramework_Demo
  pod 'AFNetworking','~> 3.0.0'
  pod 'ReactiveObjC','3.1.1'
  
  #pod 'JCore', '2.1.4-noidfa'
  #pod 'JPush', '3.2.4-noidfa'

  target 'xt_CGFramework_DemoTests' do
    # Pods for testing
  end

end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      if config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'].to_f < 10.0
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '10.0'
      end
    end
  end
end
