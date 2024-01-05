// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DiscarablePackageOne",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "DiscarablePackageOne",
            targets: ["DiscarablePackageOne"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire", exact: "5.8.1")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "DiscarablePackageOne",
            dependencies: ["Alamofire"],
            path: "Sources"),
        .testTarget(
            name: "DiscarablePackageOneTests",
            dependencies: ["DiscarablePackageOne"]),
    ]
)
