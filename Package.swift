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
            url: "https://github.com/Dwalero-org/MealzUIiOSSDKRelease/raw/release/0.0.3/MealzUIiOSSDK.zip",
            checksum: "7e52caa9c85a8d8b187ffa290165513c911ed1c4dfd236799590e222656e3fd6"
        )
        
    ]
)
/*
 
 */
