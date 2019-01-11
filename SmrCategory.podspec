

Pod::Spec.new do |s|

s.name         = "SmrCategory"

s.version      = "1.0.5"
# 1.0.0 ->  机型判断
# 1.0.1 ->  机型判断更新
# 1.0.2 ->  颜色分类
# 1.0.3 ->  颜色分类更新
# 1.0.4 ->  时间格式化
# 1.0.5 ->  正则表达式判断
# 1.0.6 -> 颜色分类更新(增加随机色)

s.summary      = "Categorys."
s.homepage     = "https://github.com/simaier/Category-Tool"
s.license      = "MIT"
s.author             = { "SiMaiEr" => "simaier1231@gmial.com" }
s.source       = { :git => "https://github.com/simaier/Category-Tool.git", :tag => "#{s.version}" }
s.requires_arc = true
s.ios.deployment_target = "9.0"
s.source_files  = "Category Tool/Category/*.{swift}"
s.swift_version = '4.0'

end
