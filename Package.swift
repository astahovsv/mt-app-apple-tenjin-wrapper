// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "TenjinWrapper",
    platforms: [
        .iOS(.v16),
        .macOS(.v13)
    ],
    products: [
        .library(
            name: "TenjinWrapper",
            targets: ["TenjinWrapper"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/tenjin/tenjin-ios-sdk", from: "1.16.0")
    ],
    targets: [
        .target(
            name: "TenjinWrapper",
            dependencies: [
                .product(
                    name: "TenjinSDK",
                    package: "tenjin-ios-sdk",
                    condition: .when(platforms: [.iOS])
                )
            ]
        )
    ]
)