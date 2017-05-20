
Pod::Spec.new do |s|
  s.name             = 'SwiftyCoreData'
  s.version          = '2.0'
  s.summary          = 'Making CoreData easier to implement'
 
  s.description      = <<-DESC
  An easy way to implement CoreData in your iOS applications
                       DESC
 
  s.homepage         = 'https://github.com/cyrilivargarcia/SwiftyCoreData'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Cyril Garcia' => 'garciacy@bycyril.com' }
  s.source           = { :git => 'https://github.com/cyrilivargarcia/SwiftyCoreData.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '10.0'
  s.source_files = 'EasyCoreData/*.swift'
 
end