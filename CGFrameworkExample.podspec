Pod::Spec.new do |s|
  s.name                      = 'CGFrameworkExample'
  s.version                   = '1.0.0'
  s.summary                   = '测试 Framework'
  s.homepage                  = 'https://github.com/iTaosky/xt_CGFramework_Demo.git'
  s.license                   = { :type => 'MIT', :file => 'LICENSE' }
  s.author                    = { 'iTaosky' => 'taosky@icloud.com' }
  s.source                    = { :git => 'https://github.com/iTaosky/xt_CGFramework_Demo.git', :tag => s.version }
  s.platform                  = :ios
  s.ios.deployment_target     = '10.0'
  
  #s.ios.vendored_frameworks   = 'Carthage/Build/iOS/Static/*.framework'

  # 依赖库
  s.dependency 'AFNetworking','~> 3.0.0' 
end 