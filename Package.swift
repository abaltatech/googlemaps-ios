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
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/\(version)/GoogleMaps.xcframework.zip",
            checksum: "7468af4ac88a272270ae9b336d2b87f28bede5c1a2cf7b79d67608da8b0c2ffa"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/\(version)/GoogleMapsBase.xcframework.zip",
            checksum: "76f2d3f2ca9f041cf3697b7979be937de8940b42f8bd7397309f144d8e7aa390"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/\(version)/GoogleMapsCore.xcframework.zip",
            checksum: "77a2ae1d85e3b85c596dfe5416c106fda46846f48663cd0672b68a27362c8887"
        )
    ]
)