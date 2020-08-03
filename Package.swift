// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Fakery",
    products: [
        .library(name: "Fakery", targets: ["Fakery"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "Fakery",
                dependencies: [],
                resources: [.process("Resources/Locales")])
    ]
)
