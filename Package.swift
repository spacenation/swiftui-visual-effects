// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VisualEffects",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "VisualEffects", targets: ["VisualEffects"])
    ],
    targets: [
        .target(name: "VisualEffects", dependencies: [])
    ]
)
