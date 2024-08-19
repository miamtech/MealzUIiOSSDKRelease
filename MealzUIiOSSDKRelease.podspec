
Pod::Spec.new do |spec|
    spec.name              = 'MealzUIiOSSDKRelease'
    spec.version           = '4.1.0'
    spec.summary           = 'Mealz MealzUIiOSSDK for iOS'
    spec.homepage          = 'https://miamtech.github.io/mealz-documentation'
       spec.description           = <<-DESC
       Mealz MealzUIiOSSDK SDK for iOS.
       DESC
    spec.author            = { 'Diarmuid McGonagle, Damien Walerowicz' => 'it@mealz.ai' }
#    spec.license           = { :type => 'GPLv3', :file => 'LICENSE' }
    spec.swift_versions = "5.8"
    spec.platform          = :ios, "12.0"
    spec.source            = { :http => 'https://github.com/miamtech/MealzUIiOSSDK/raw/release/4.1.0/MealzUIiOSSDK.zip' }
    spec.dependency 'MealziOSSDKRelease', '~> 4.1.0'
    spec.ios.vendored_frameworks = 'MealzUIiOSSDK.xcframework'
#    spec.resource_bundles = {'MealzCore' => ['*.xcprivacy']}
end
