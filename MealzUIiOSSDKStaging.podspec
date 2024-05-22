
Pod::Spec.new do |spec|
    spec.name              = 'MealzUIiOSSDKStaging'
    spec.version           = '0.0.1'
    spec.summary           = 'Mealz MealzUIiOSSDK for iOS'
    spec.homepage          = 'https://www.mealz.ai'
       spec.description           = <<-DESC
       Mealz MealzUIiOSSDK SDK for iOS.
       DESC
    spec.author            = { 'Diarmuid McGonagle, Damien Walerowicz' => 'it@mealz.ai' }
    spec.license           = { :type => 'GPLv3', :file => 'LICENSE' }
    spec.swift_versions = "5.8"
    spec.platform          = :ios, "12.0"
    spec.source            = { :http => 'https://github.com/Dwalero-org/MealzUIiOSSDKRelease/raw/release/0.0.1/MealzUIiOSSDK.zip }
    spec.dependency 'MealziOSSDK', '~> 4.1.0-alpha'
    spec.ios.vendored_frameworks = 'MealzUIiOSSDK.xcframework'
    spec.resource_bundles = {'MealzCore' => ['*.xcprivacy']}
end
