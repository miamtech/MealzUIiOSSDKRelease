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
            checksum: "1f275e47abb575cd2d5a8d958a96f9fc688bb3aabcbac743cca6575d64d05173"
        ),
    ]
)
/*

 */
