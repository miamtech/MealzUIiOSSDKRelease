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
            checksum: "12ef584604b628414be7a321647195815fdecde659b3f7d2936ce95927be5f7d"
        ),
    ]
)
/*

 */
