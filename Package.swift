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
            checksum: "be5ca24fc50143c6294dc0f89a9641c4d331569a1c4c18e57765fe83039bebb1"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/abaltatech/googlemaps-ios/releases/download/\(version)/GoogleMapsBase.xcframework.zip",
            checksum: "bab5d88a02bb5721e9dec2e34e07319c3c4de3372531818a7e0d395941f800e7"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/abaltatech/googlemaps-ios/releases/download/\(version)/GoogleMapsCore.xcframework.zip",
            checksum: "53cabcfaff934ebb9c990807baa3831d71946e87dae379a1e9f1773836b0ca80"
        )
    ]
)
