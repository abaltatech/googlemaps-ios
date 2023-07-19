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
            checksum: "2890383f74c6278cce8dadda2c26f1e2fce9a09601007ec81509ea91b5a07524"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/abaltatech/googlemaps-ios/releases/download/\(version)/GoogleMapsBase.xcframework.zip",
            checksum: "7883a973e3be99219306324c1c6249b65c50c5d1f2564cde0878c8c20b194e53"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/abaltatech/googlemaps-ios/releases/download/\(version)/GoogleMapsCore.xcframework.zip",
            checksum: "5a67da85369c8081a87c0f18727a2ba93e1ed11eef9bbf0987635ca567d10504"
        )
    ]
)
