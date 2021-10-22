Pod::Spec.new do |s|
  s.name             = 'AMRAdapterChartboost'
  s.version          = '8.5.0.0'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
														Copyright 2016
														Admost Mediation Limited. 
														LICENSE
														}
  s.homepage         = 'http://www.admost.com/'
  s.author           = { 'Admost Mediation Limited' => 'amr@admost.com' }
  s.summary          = 'Chartboost adapter for AMR SDK.'
  s.description      = 'AMR Chartboost adapter allows publishers to mediate Chartboost interstitial and video ads in AMR SDK.'

  s.source           = { :git => 'https://github.com/admost/AMR-IOS-ADAPTER-CHARTBOOST.git',
 								 :tag => s.version.to_s
 								}
  s.documentation_url = 'https://admost.github.io/amrios/'
  s.platform 			= :ios
  s.ios.deployment_target = '10.0'
  s.vendored_libraries = 'AMRAdapterChartboost/Libs/libAMRAdapterChartboost.a'
  s.dependency 'AMRSDK', '~> 1.4.84'
  s.dependency 'ChartboostSDK', '8.5.0'
end
