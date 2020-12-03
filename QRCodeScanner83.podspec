Pod::Spec.new do |s|
  s.name        = "QRCodeScanner83"
  s.version     = "0.0.3"
  s.summary     = "Simple and extendable QR code/barcode/etc. scanner for iOS apps."
  s.homepage    = "https://github.com/seriyvolk83/QRCodeScanner"
  s.license     = { :type => "MIT" }
  s.authors     = { "seriyvolk83" => "volk@frgroup.ru" }

  s.requires_arc = true
  s.swift_version = "5.0"
  s.ios.deployment_target = "11.0"
  s.source   = { :git => "https://github.com/seriyvolk83/QRCodeScanner.git", :tag => s.version }
  s.source_files = "Source/*.swift"

  s.default_subspec = "Core"

  s.subspec 'Core' do |cs|
    cs.source_files = "Source/*.swift"
  end

end
