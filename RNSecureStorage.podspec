require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "RNSecureStorage"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  RNSecureStorage
                   DESC
  s.homepage     = "https://github.com/lukadisanto/react-native-secure-storage"
  s.license      = "MIT"
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author       = { "Luca D'Isanto" => "lukadisanto@gmail.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/lukadisanto/react-native-secure-storage.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m}"
  s.requires_arc = true

  s.dependency "React"
  #s.dependency "others"
end

  
