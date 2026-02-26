Pod::Spec.new do |spec|
  spec.name             = 'hariSPM'
  spec.version          = '1.0.2'
  
  spec.summary          = 'Identify and prevent fraudulent activity accurately and immediately.'
  spec.description      = 'Device Fingerprinting helps you understand your user’s unique harware with their device data & processes them in backend to generate a fingerprint id.'
  
  spec.homepage         = 'https://www.bureau.id/products/bureau-device-intelligence-behaviorial-biometrics'
  spec.license = 'MIT'
  spec.authors          = {'Bureau-Inc1' => 'techops1@bureau.id'}
  spec.ios.deployment_target = "13.0"

  spec.source           = { :git => 'https://github.com/Bureau-Inc/BureauSDKiOS.git', :tag => spec.version.to_s }
  
  spec.vendored_frameworks = '**/*.xcframework'
  spec.swift_version = '5.0'
    
end
