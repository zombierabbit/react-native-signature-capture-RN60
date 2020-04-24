package = JSON.parse(File.read(File.join(__dir__, "package.json")))
version = package['version']

Pod::Spec.new do |s|
  s.name             = "react-native-signature-capture"
  s.version          = version
  s.summary          = package["description"]
  s.requires_arc = true
  s.license      = 'MIT'
  s.homepage     = 'https://github.com/zombierabbit/react-native-signature-capture'
  s.authors      = { "zombierabbit" => "" }
  s.source       = { :git => "https://github.com/zombierabbit/react-native-signature-capture", :tag => 'v#{version}'}
  s.source_files = 'ios/*.{h,m}'
  s.platform     = :ios, "9.0"
  s.dependency 'React'
end
