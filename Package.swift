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
            checksum: "ebab88865ad485ffca25a543574bed7fae7f43e517d3bf974f960ff5d4f7a28f"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/abaltatech/googlemaps-ios/releases/download/\(version)/GoogleMapsBase.xcframework.zip",
            checksum: "bbd371464be7638329921fc6681cfc9132c75f9214511d6f8052b4754d84c6ab"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/abaltatech/googlemaps-ios/releases/download/\(version)/GoogleMapsCore.xcframework.zip",
            checksum: "1dff65d10fad115cf5340c8fb1aad7b046f8b93656a9124cb1ef8fc686a68305"
        )
    ]
)
