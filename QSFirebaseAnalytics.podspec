Pod::Spec.new do |spec|
  spec.name         = "QSFirebaseAnalytics"
  spec.version      = "1.0.0"
  spec.summary      = "Firebase打点"
  spec.description  = "Firebase打点分析"
  spec.homepage     = "https://github.com/fallpine/QSFirebaseAnalytics"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "QiuSongChen" => "791589545@qq.com" }
  spec.platform     = :ios, "15.0"
  spec.source       = { :git => "https://github.com/fallpine/QSFirebaseAnalytics.git", :tag => "#{spec.version}" }
  spec.swift_version = '5'
  # 静态库
  spec.static_framework = true
  spec.source_files  = "QSFirebaseAnalytics/QSFirebaseAnalytics/Tool/*.{swift}"
  spec.dependency "FirebaseAnalytics"
end
