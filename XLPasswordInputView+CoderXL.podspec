Pod::Spec.new do |s|
    s.name         = 'XLPasswordInputView+CoderXL'
    s.version      = '1.0.5'
    s.summary      = 'An easy password input view'
    s.homepage     = 'https://github.com/CoderXLLau/XLPasswordInputView.git'
    s.license      = 'MIT'
    s.authors      = {'CoderXLLau' => '2604156181@qq.com'}
    s.platform     = :ios, '7.0'
    s.source       = {:git => 'https://github.com/CoderXLLau/XLPasswordInputView.git', :tag => s.version}
    s.source_files = 'XLPasswordInputView/*'
    s.dependency 'SDWebImage', '~> 4.0.0'
 
    s.requires_arc = true
end
