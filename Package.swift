// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "7.3.0"

let package = Package(
    name: "GoogleMaps",
    platforms: [
        .macOS(.v10_13), .iOS(.v11), .macCatalyst(.v13)
    ],
    products: [
        .library(
            name: "GoogleMaps",
            targets: [
                "GoogleMaps"
            ]
        ),
        .library(
            name: "GoogleMapsBase",
            targets: [
                "GoogleMapsBase"
            ]
        ),
        .library(
            name: "GoogleMapsCore",
            targets: [
                "GoogleMapsCore"
            ]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "GoogleMaps",
            url: "https://github.com/abaltatech/googlemaps-ios/releases/download/\(version)/GoogleMaps.xcframework.zip",
            checksum: "98c8af7cae50791467ea2869f21263c31a4ac7746749ea0db4d559b5f283a68e"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/abaltatech/googlemaps-ios/releases/download/\(version)/GoogleMapsBase.xcframework.zip",
            checksum: "9dd6e0ec490ef8631408d03b30b235fe26f66d97a5d3a0557740702a4e0ecc5e"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/abaltatech/googlemaps-ios/releases/download/\(version)/GoogleMapsCore.xcframework.zip",
            checksum: "b526d8117e24983bf9ed32f7bddeb44e4e02005bfab9cb8a462e6c89579c7797"
        )
    ]
)
