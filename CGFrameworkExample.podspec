Pod::Spec.new do |s|
  s.name                      = 'CGFrameworkExample'
  s.version                   = '0.0.1'
  s.summary                   = '测试 Framework'
  s.homepage                  = 'https://github.com/iTaosky/xt_CGFramework_Demo.git'
  s.license                   = { :type => 'MIT', :file => 'LICENSE' }
  s.author                    = { 'iTaosky' => 'taosky@icloud.com' }
  s.source                    = { :git => 'https://github.com/iTaosky/xt_CGFramework_Demo.git', :tag => s.version }
  s.platform                  = :ios
  s.ios.deployment_target     = '10.0'
  s.source_files = 'CGFrameworkExample/CGFrameworkExample/*.{h,m}'
  s.requires_arc = true
  s.vendored_frameworks   = 'CGFrameworkExample/CGFrameworkExample.framework'
  s.frameworks = "Foundation", "UIKit"
  # 依赖库
  s.dependency 'AFNetworking','~> 3.0.0' 
end 