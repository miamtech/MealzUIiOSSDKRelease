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
            url: "https://github.com/Dwalero-org/MealzUIiOSSDKRelease/raw/release/0.0.4/MealzUIiOSSDK.zip",
            checksum: "848611d91a686cc0fba4181d3a74e4225ae7f829307e05c492bf3cc694b7a333"
        )
        
    ]
)
/*
 
 */
