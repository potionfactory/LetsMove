// swift-tools-version:5.4
import PackageDescription

let package = Package(
    name: "LetsMove",
    defaultLocalization: "en",
    platforms: [
        .macOS(.v10_10),
    ],
    products: [
        .library(name: "LetsMove",
                 targets: ["LetsMove"])
    ],
    targets: [
        .target(
            name: "LetsMove",
            path: ".",
            exclude: [
                "main.m",
                "LetsMoveAppDelegate.m",
                "LetsMoveAppDelegate.h",
                "Resources/LetsMove-Info.plist",
                "Resources/LetsMove-Test-Info.plist",
                "LetsMove.modulemap",
                "LetsMove_Prefix.pch"
            ],
            resources: [
                .process("Resources")
            ],
            publicHeadersPath: "include",
            cSettings: [.unsafeFlags(["-fno-objc-arc"])]
        )
    ],
    swiftLanguageVersions: [.v5]
)
