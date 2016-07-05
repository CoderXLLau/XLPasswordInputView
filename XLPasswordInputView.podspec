Pod::Spec.new do |s|
    s.name         = ‘XLPasswordInputView’
    s.version      = ‘1.0.0’
    s.summary      = 'An easy password input view’
    s.homepage     = 'https://github.com/Shannoon/XLPasswordInputView'
    s.license      = 'MIT'
    s.authors      = {‘Shannoon’ => ‘2604156181@qq.com'}
    s.platform     = :ios, ‘7.0’
    s.source       = {:git => 'https://github.com/Shannoon/XLPasswordInputView.git', :tag => s.version}
    s.source_files = 'XLPasswordInputView/*'
    s.requires_arc = true
end
