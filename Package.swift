// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EthereumSignTypedDataUtil",
    platforms: [
        .macOS(.v10_12),
        .iOS(.v10),
        .tvOS(.v11),
        .watchOS(.v3)
    ],
    products: [
        .library(
            name: "EthereumSignTypedDataUtil",
            targets: ["EthereumSignTypedDataUtil"]),
    ],
    dependencies: [
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", .upToNextMajor(from: "1.5.1")),
        .package(url: "https://github.com/attaswift/BigInt.git", .upToNextMajor(from: "5.0.0")),
    ],
    targets: [
        .target(
            name: "EthereumSignTypedDataUtil",
            dependencies: ["CryptoSwift", "BigInt"]),
        .testTarget(
            name: "EthereumSignTypedDataUtilTests",
            dependencies: ["EthereumSignTypedDataUtil"]),
    ],
    swiftLanguageVersions: [.v5]
)
