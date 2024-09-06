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
            targets: ["MealzUIiOSSDK"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/miamtech/MealziOSSDKRelease", from: "4.1.0"),
    ],
    targets: [
        .binaryTarget(
            name: "MealzUIiOSSDK",
            url: "https://github.com/miamtech/MealzUIiOSSDKRelease/raw/release/4.1.0/MealzUIiOSSDK.zip",
            checksum: "c2dcb682548944ef84e996e9c1e87479deed960b54ef51aa04df1806362a6100"
        ),
    ]
)
/*

 */
