// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.0.0"

let package = Package(
    name: "DataPackage",
    platforms: [
        .iOS(.v16),
        .macOS(.v13)
    ],
    products: [
        .library(
            name: "DataFramework",
            targets: ["DataFramework"]),
    ],
    targets: [
        .target(name: "DataPackage"),
        .binaryTarget(name: "DataFramework", path: "frameworks/DataFramework.xcframework")
    ]
)
