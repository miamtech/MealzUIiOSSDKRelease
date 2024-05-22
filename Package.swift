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
            url: "https://github.com/Dwalero-org/MealzUIiOSSDKRelease/raw/release/0.0.2/MealzUIiOSSDK.zip",
            checksum: "b8da1a1f2409c2419d15669742404ec31d337a1c8084d6d90e0bcf84ccb3eed7"
        )
        
    ]
)
/*
 
 */
