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
                "GoogleMaps",
                "GoogleMapsBase",
                "GoogleMapsCore"
            ]
        )
    ],
    targets: [
        .binaryTarget(
            name: "GoogleMaps",
            url: "https://github.com/abaltatech/googlemaps-ios/releases/download/\(version)/GoogleMaps.xcframework.zip",
            checksum: "f5144d8b7834bac7a0ae76bb05b26635e95dcf5060f819544e3a0e52b20b0e6a"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/abaltatech/googlemaps-ios/releases/download/\(version)/GoogleMapsBase.xcframework.zip",
            checksum: "2396c926f451f77cd166922929f1f1e0ebebc88700ce23d8219d33a9ea6fd47e"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/abaltatech/googlemaps-ios/releases/download/\(version)/GoogleMapsCore.xcframework.zip",
            checksum: "377617fe0af7fe9f7c946e5b83f396121ed5a7db670199db3eb2f4479230f4fa"
        )
    ]
)
