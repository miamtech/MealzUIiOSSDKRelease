
Pod::Spec.new do |spec|
    spec.name              = 'MealzUIiOSSDKStaging'
    spec.version           = '0.0.3'
    spec.summary           = 'Mealz MealzUIiOSSDK for iOS'
    spec.homepage          = 'https://www.mealz.ai'
       spec.description           = <<-DESC
       Mealz MealzUIiOSSDK SDK for iOS.
       DESC
    spec.author            = { 'Diarmuid McGonagle, Damien Walerowicz' => 'it@mealz.ai' }
    spec.license           = { :type => 'GPLv3', :file => 'LICENSE' }
    spec.swift_versions = "5.8"
    spec.platform          = :ios, "12.0"
    spec.source            = { :http => 'https://github.com/Dwalero-org/MealzUIiOSSDKRelease/raw/release/0.0.3/MealzUIiOSSDK.zip' }
    spec.dependency 'MealziOSSDKStaging', '~> 0.0.110'
    spec.ios.vendored_frameworks = 'MealzUIiOSSDK.xcframework'
    spec.resource_bundles = {'MealzCore' => ['*.xcprivacy']}
end
