Pod::Spec.new do |s|
  s.name     = 'UIColor-HexRGB'
  s.version  = '1.0.1'
  s.license  = 'MIT'
  s.summary  = 'UIColor-HexRGB is easy drop in UIColor category that converts Hex and RGB values to UIColor.'
  s.homepage = 'https://github.com/tinymind/UIColor-HexRGB'
  s.author   = { "lslin" => "xappbox@gmail.com" }
  s.source   = { :git => 'https://github.com/tinymind/UIColor-HexRGB.git', :tag => s.version.to_s}
  s.platform = :ios, '4.3'  
  s.requires_arc = true  
  
  s.source_files = 'Classes/*'
  s.frameworks = 'Foundation', 'UIKit'
end