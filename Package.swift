// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MealzUIiOSSDKRelease",
    defaultLocalization: "fr",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MealzUIiOSSDKRelease",
            targets: ["MealzUIiOSSDKRelease"]),
    ],
    targets: [
        .binaryTarget(
            name: "MealzUIiOSSDKRelease",
            path: "./MealzUIiOSSDK.xcframework"
        )
    ]
)
