// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "Persistence",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Persistence",
            targets: ["Persistence"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Persistence"),
        .testTarget(
            name: "PersistenceTests",
            dependencies: ["Persistence"]),
    ],
    swiftLanguageVersions: [.v5]
)