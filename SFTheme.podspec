Pod::Spec.new do |s|

  s.name         = "SFTheme"
  s.version      = "1.0.3"
  s.summary      = "更改应用主题"

  s.description  = <<-DESC
                   方便更改应用主题
                   DESC

  s.homepage     = "https://github.com/sofach/SFTheme"

  s.license      = "MIT"

  s.author       = { "sofach" => "sofach@126.com" }

  s.platform     = :ios
  s.platform     = :ios, "5.0"

  s.source       = { :git => "https://github.com/sofach/SFTheme.git", :tag => "1.0.3" }

  s.source_files  = "SFTheme/lib/**/*.{h,m}"

  s.requires_arc = true

  s.dependency "CocoaLumberjack"

end
