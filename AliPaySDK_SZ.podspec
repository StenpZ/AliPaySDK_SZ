
Pod::Spec.new do |s|
s.name          = "AliPaySDK_SZ"
s.version       = "15.6.5"
s.summary       = "支付宝官方SDK(v15.6.5)"
s.description   = <<-DESC
支付宝官方SDK(15.6.5)，方便大家使用cocoapods导入，适用于集成了百川sdk，出现UTDID冲突
DESC
s.homepage      = "https://github.com/StenpZ/AliPaySDK_SZ.git"
s.license       = "MIT"

s.author        = { "StenpZ" => "zhouc520@foxmail.com" }
s.source        = { :git => "https://github.com/StenpZ/AliPaySDK_SZ.git", :tag => "#{s.version}" }

s.resource      = "AlipaySDK/AlipaySDK.bundle"
s.frameworks    = "Foundation", "UIKit", "SystemConfiguration", "CoreTelephony", "QuartzCore", "CoreText", "CoreGraphics", "CFNetwork", "CoreMotion"
s.libraries     = "z", "c++"
s.vendored_frameworks = "AlipaySDK/AlipaySDK.framework"

s.platform      = :ios,'7.0'
s.requires_arc  = true

end
