// swift-tools-version: 5.7

import PackageDescription

let repoURL = "https://github.com/adison-ads/adison-ofw-module-paybooc-ios/releases/download"
let artifactVersion = "1.2.4"
let artifactName = "PayboocOfwModule.zip"
let checksum = "5697ca0bcd0b4d865ec162a0db497f6ac9d1286b81f9720909e80dff346aa783"

let offerwallRepoURL = "https://github.com/adison-ads/adison-offerwall-ios-sdk"
let offerwallExactVersion = Version("3.1.50")

// MARK: - Do not change.
let package = Package(
    name: "PayboocOfwModule",
    products: [
        .library(
            name: "PayboocOfwModule",
            targets: ["PayboocOfwModule", "PayboocOfwModuleTarget"]
        ),
    ],
    dependencies: [
        .package(
            url: offerwallRepoURL, exact: offerwallExactVersion
        ),
    ],
    targets: [
        .binaryTarget(
            name: "PayboocOfwModule",
            url: repoURL + "/" + artifactVersion + "/" + artifactName,
            checksum: checksum
        ),
        .target(
            name: "PayboocOfwModuleTarget",
            dependencies: [
                .product(name: "AdisonOfferwallSDK", package: "adison-offerwall-ios-sdk")
            ],
            path: "Sources"
        )
    ]
)
