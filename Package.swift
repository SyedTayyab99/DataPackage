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
            name: "DataPackage",
            targets: ["DataPackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/realm/realm-swift", exact: Version("10.42.0"))
    ],
    targets: [
        .binaryTarget(name: "DataFramework", path: "frameworks/DataFramework.xcframework"),
        .target(
            name: "DataPackage",
            dependencies: ["DataFramework", .product(name: "RealmSwift", package: "realm-swift")]),
        
    ]
)
