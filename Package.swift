// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let configurationMode = "prod"

let package = Package(
    name: "MealzUIiOSSDK",
    defaultLocalization: "fr",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "MealzUIiOSSDK",
            targets: ["MealzUIiOSSDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/miamtech/MealzIOSFrameworkRelease", from: "1.0.0")
    ],
    targets: [
        .binaryTarget(
            name: "MealzUIiOSSDK",
            url: "https://github.com/miamtech/MealzUIiOSSDKRelease/raw/release/1.0.0/MealzUIiOSSDK.zip",
            checksum: "d223dbd7349ad09a2ae7fec6d971cb7b80afc3b771b449b1500c4ab32c6b6749"
        )
        
    ]
)
/*
 
 */
