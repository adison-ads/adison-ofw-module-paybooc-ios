// swift-tools-version: 5.7

import PackageDescription

let repoURL = "https://github.com/adison-ads/adison-ofw-module-paybooc-ios/releases/download"
let artifactVersion = "1.3.0-beta1"
let artifactName = "PayboocOfwModule.zip"
let checksum = "9a2b1edc93631840d4bf3165591ec8d36c4d19a13281589aa464e4b51f62b186"

let offerwallRepoURL = "https://github.com/adison-ads/adison-offerwall-ios-sdk"
let offerwallExactVersion = Version("3.5.0-beta2")

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
