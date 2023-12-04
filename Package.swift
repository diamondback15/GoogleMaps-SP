// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let googleMapsBinaryTarget = Target.binaryTarget(name: "GoogleMaps", path: "Sources/Frameworks/GoogleMaps.xcframework")
let googleMapsCoreBinaryTarget = Target.binaryTarget(name: "GoogleMapsCore", path: "Sources/Frameworks/GoogleMapsCore.xcframework")
let googleMapsBaseBinaryTarget = Target.binaryTarget(name: "GoogleMapsBase", path: "Sources/Frameworks/GoogleMapsBase.xcframework")

let package = Package(
    name: "GoogleMaps-SP",
    platforms: [
        .iOS(.v17)
    ],
    products: [
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
        .library(
            name: "GoogleMaps",
            targets: [
                "GoogleMaps",
                "GoogleMapsBase",
                "GoogleMapsCore"
            ]
        ),
    ],
    targets: [
        googleMapsBinaryTarget,
        googleMapsBaseBinaryTarget,
        googleMapsCoreBinaryTarget
    ]
)
