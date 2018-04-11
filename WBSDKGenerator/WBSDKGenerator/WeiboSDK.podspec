Pod::Spec.new do |s|
s.name         = 'WeiboSDK'
s.version      = '0.0.2'
s.license = 'MIT'
s.requires_arc = true
s.source = { :path => 'WeiboSDK' }

s.summary = 'WeiboSDK for iOS'
s.homepage = 'No homepage'
s.author       = { 'xushuifeng' => 'shuifengxu@gmail.com' }
s.platform     = :ios
s.ios.deployment_target = '10.0'
s.source_files = '*.swift', '**/*.swift'

s.dependency 'GenericNetworking'

end

