Pod::Spec.new do |s|
  s.name         = "MagicScrollPage"
  s.version      = "0.0.1"
  s.summary      = "MagicScrollPage是一个上下分页组件"
  s.description  = "MagicScrollPage组件,能够帮助开发者更容易的集成上下分页效果"
  s.homepage     = "https://github.com/Luis-X/MagicScrollPage"
  s.license      = "MIT"
  s.author       = "LuisX"
  s.source       = { :git => "https://github.com/Luis-X/MagicScrollPage.git", :tag => "#{s.version}" }
  s.source_files = "MagicScrollPageExample/MagicScrollPage/**/*.{h,m}"
  s.requires_arc = true
  s.dependency "MJRefresh", "~> 3.1.12"
  s.dependency "Masonry", "~> 1.0.1"
  s.ios.deployment_target = '7.0'
end