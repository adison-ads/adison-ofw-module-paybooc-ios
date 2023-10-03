// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PayboocOfwModule",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "PayboocOfwModule",
            targets: ["PayboocOfwModule"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/adison-ads/adison-offerwall-ios-sdk", exact: Version("3.1.48"))
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "PayboocOfwModule",
            url: "https://github.com/adison-ads/adison-ofw-module-paybooc-ios/releases/download/v1.1.8/PayboocOfwModule.zip",
            checksum: "5443ee0ea11f67e0fab4dfa95669f0817d82029c5f39c90d5708c65818809ec6"
        )
    ]
)
