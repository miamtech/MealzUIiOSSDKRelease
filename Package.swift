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
            checksum: "8922867ed85e910bd8602e462d64b9d6447be9af561f0a1f0eff740529504cef"
        ),
    ]
)
/*

 */
