// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "Feature",
    platforms: [.macOS(.v14),
                .iOS(.v17)],
    products: [
        .library(name: "Calendar",
                 targets: ["Calendar"]),
        .library(name: "Portfolio",
                 targets: ["Portfolio"]),
    ],
    dependencies: [
        .package(path: "../Core")
    ],
    targets: [
        .target(name: "Calendar",
                dependencies: ["Core"]),
        .target(name: "Portfolio",
                dependencies: ["Core"]),
    ]
)
