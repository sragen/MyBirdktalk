// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyBirdtalk",
    defaultLocalization: "en",
    platforms: [
            .iOS(.v13)
        ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MyBirdtalk",
            targets: ["MyBirdtalk"]),
    ],
    dependencies: [
            // Add your GitHub dependencies here
            .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", from: "5.0.0"),
            .package(url: "https://github.com/wirasetiawan29/TinodeSDK.git", branch: "main")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "MyBirdtalk",
            dependencies: [
                "TinodeSDK"
            ],
            path: "Sources/MyBirdtalk",
            resources: [
                .process("Tinode") // Add your localized resource directory here
            ]
        ),
        .testTarget(
            name: "MyBirdtalkTests",
            dependencies: ["MyBirdtalk"]),
    ]
)
