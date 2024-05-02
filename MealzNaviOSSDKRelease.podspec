Pod::Spec.new do |spec|
    spec.name         = 'MealzNaviOSSDKRelease'
    spec.version      = '1.1.0-alpha'
    spec.summary      = 'Mealz UI iOS SDK'
    spec.description  = <<-DESC
        Mealz UI iOS SDK.
        DESC

    spec.homepage     = 'https://www.miam.tech'
    spec.license      = "GPLv3"
    spec.author             = { "Diarmuid McGonagle" => "it@miam.tech" }
    spec.platform     = :ios, "12.0"
    spec.swift_version = '5.8'
    spec.source       = { :git => "https://github.com/miamtech/MealzNaviOSSDKRelease.git", :tag => "#{spec.version}" }
    spec.dependency 'MealzUIiOSSDKRelease', '~> 1.1.0-alpha'
    spec.static_framework = true
end
