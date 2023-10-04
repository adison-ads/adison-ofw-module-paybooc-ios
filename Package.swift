// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PayboocOfwModule",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "PayboocOfwModule",
            targets: ["PayboocOfwModule", "PayboocOfwModuleTarget"]
        ),
    ],
    dependencies: [
        .package(
            name: "AdisonOfferwallSDK",
            url: "https://github.com/adison-ads/adison-offerwall-ios-sdk",
            .upToNextMajor(from: Version("3.1.48"))
        ),
    ],
    targets: [
        .binaryTarget(
            name: "PayboocOfwModule",
            url: "https://github.com/adison-ads/adison-ofw-module-paybooc-ios/releases/download/1.2.0/PayboocOfwModule.zip",
            checksum: "c11a20401718e3e09110fca8a8fb8b74a902cfe19591c7f24a9ee555813fa326"
        ),
        .target(
            name: "PayboocOfwModuleTarget",
            dependencies: ["AdisonOfferwallSDK"],
            path: "Sources"
        )
    ]
)
