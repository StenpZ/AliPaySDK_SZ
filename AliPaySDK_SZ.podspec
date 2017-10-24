
Pod::Spec.new do |s|
s.name          = "AliPaySDK_SZ"
s.version       = "15.4.1"
s.summary       = "支付宝官方SDK(15.4.1)"
s.description   = <<-DESC
支付宝官方SDK(15.4.1)，方便大家使用cocoapods导入
DESC
s.homepage      = "https://github.com/StenpZ/AliPaySDK_SZ.git"
s.license       = "MIT"

s.author        = { "StenpZ" => "zhouc520@foxmail.com" }
s.source        = { :git => "https://github.com/StenpZ/AliPaySDK_SZ.git", :tag => "#{s.version}" }

s.resource      = "AlipaySDK/AlipaySDK.bundle"
s.frameworks    = "Foundation", "UIKit", "SystemConfiguration", "CoreTelephony", "QuartzCore", "CoreText", "CoreGraphics", "UIKit", "Foundation", "CFNetwork", "CoreMotion"
s.libraries     = "z", "c++"
s.vendored_frameworks = "AlipaySDK/AlipaySDK.framework"

s.platform      = :ios,'7.0'
s.requires_arc  = true

end
