// swift-tools-version: 6.2
//
// ChainKit 26.9.0 (Release)
// Built from 3867a2d752f9615796e01794594abf18f3f18554
// with kotlin 2.4.10 | Xcode 26.6 | iOS SDK 26.5 | wallet-core 4.6.0

import PackageDescription

let package = Package(
    name: "ChainKit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "ChainKit",
            targets: ["ChainKit", "ChainKitSupport"]
        ),
        .library(
            name: "WalletCore",
            targets: ["WalletCore", "WalletCoreSwiftProtobuf"]
        )
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "ChainKit",
            url: "https://github.com/tonkeeper/chainkit-publishing/releases/download/26.9.0/ChainKit.xcframework.zip",
            checksum: "38deac0c04ac8c14f591f0509d9d2220bd9c1cf8ee5572265920469dfeb67e3b"
        ),
        .binaryTarget(
            name: "WalletCore",
            url: "https://github.com/trustwallet/wallet-core/releases/download/4.6.0/WalletCore.xcframework.zip",
            checksum: "689935aff413004b18c7b32ee955716868ebcd38328c5159c69f0d5f5bcfddf0"
        ),
        .binaryTarget(
            name: "WalletCoreSwiftProtobuf",
            url: "https://github.com/trustwallet/wallet-core/releases/download/4.6.0/WalletCoreSwiftProtobuf.xcframework.zip",
            checksum: "719b1ebc7ad174017e399cdd7fc60372b369d9712d646ebb8b4e264c4881d1d8"
        ),
        .target(
            name: "ChainKitSupport",
            dependencies: [
                "WalletCore",
                "WalletCoreSwiftProtobuf"
            ],
            path: "Sources/ChainKitSupport"
        )
    ]
)
