Pod::Spec.new do |s|
  s.name         = "XHToast"
  s.version      = "1.4.0"
  s.summary      = "简洁轻便提示工具,一行代码,既可完成提示信息显示"
  s.homepage     = "https://github.com/CoderZhuXH/XHToast"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "Zhu Xiaohui" => "977950862@qq.com"}
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/CoderZhuXH/XHToast.git", :tag => s.version }
  s.source_files = "XHToast", "*.{h,m}"
  s.requires_arc = true
  
end
