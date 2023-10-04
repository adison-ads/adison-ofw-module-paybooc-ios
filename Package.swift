// swift-tools-version: 5.7

import PackageDescription

let repoURL = "https://github.com/adison-ads/adison-ofw-module-paybooc-ios/releases/download"
let artifactVersion = "1.2.2"
let artifactName = "PayboocOfwModule.zip"
let checksum = "5c76db72c4c574fe75bae3adf26372a2aba9f68d848e15e950fd29e974a5c689"

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
