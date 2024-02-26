// swift-tools-version: 5.7

import PackageDescription

let repoURL = "https://github.com/adison-ads/adison-ofw-module-paybooc-ios/releases/download"
let artifactVersion = "1.3.0"
let artifactName = "PayboocOfwModule.zip"
let checksum = "7f981c9e01c654ff077f199c40cd87e9a849bd9653b00cee48676a9e1d3c67e1"

let offerwallRepoURL = "https://github.com/adison-ads/adison-offerwall-ios-sdk"
let offerwallExactVersion = Version("3.5.0-beta1")

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
