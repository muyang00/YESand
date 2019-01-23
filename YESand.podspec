Pod::Spec.new do |s|
s.name        = 'YESand'
s.version     = '1.0.0'
s.authors     = { 'muyang00' => '280798744@qq.com' }
s.homepage    = 'https://github.com/muyang00/YESand'
s.summary     = 'a dropdown menu for ios like save homepage.'
s.source      = { :git => 'https://github.com/muyang00/YESand.git',
:tag => s.version.to_s }
s.license     = { :type => "MIT", :file => "LICENSE" }


s.platform = :ios, '8.0'
s.requires_arc = true
s.source_files = 'YESand/YE.h'
s.public_header_files = 'YESand/YE.h'
s.ios.deployment_target = '8.0'


s.dependency 'SVProgressHUD'

  s.subspec 'B' do |ss|
   
    ss.source_files = 'YESand/B/**/*.{h,m}'
    ss.public_header_files = 'YESand/B/**/*.h'
    
  end

  s.subspec 'C' do |ss|
   
    ss.dependency 'YESand/B'

    ss.source_files = 'YESand/C/**/*.{h,m}'
    ss.public_header_files = 'YESand/C/**/*.h'
    
  end




end