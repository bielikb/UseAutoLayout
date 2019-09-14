// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UseAutoLayout",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "UseAutoLayout",
            targets: ["UseAutoLayout"]),
    ],
    targets: [
        .target(
            name: "UseAutoLayout",
            dependencies: [])
    ]
)
