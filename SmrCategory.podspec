

Pod::Spec.new do |s|

s.name         = "SmrCategory"
s.version      = "1.0.3"
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
