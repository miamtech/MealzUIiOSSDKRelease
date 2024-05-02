// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MealzNavIiOSSDKRelease",
    defaultLocalization: "fr",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MealzNavIiOSSDKRelease",
            targets: ["MealzNavIiOSSDKRelease"]),
    ],
    targets: [
        .binaryTarget(
            name: "MealzNavIiOSSDKRelease",
            path: "./MealzNavIiOSSDK.xcframework"
        )
    ]
)
