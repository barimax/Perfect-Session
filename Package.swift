// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "PerfectSession",
    products: [
        .library(
            name: "PerfectSession",
            targets: ["PerfectSession"]),
    ],
    dependencies: [
        .package(url: "https://github.com/barimax/Perfect-Logger.git", "4.0.0"..<"4.1.0"),
        .package(url: "https://github.com/PerfectlySoft/Perfect-HTTP.git", "3.3.0"..<"4.0.0"),
    ],
    targets: [
        .target(
            name: "PerfectSession",
            dependencies: ["PerfectLogger", "PerfectHTTP"]),
        .testTarget(
            name: "PerfectSessionTests",
            dependencies: ["PerfectSession"]),
    ]
)
