// swift-tools-version: 6.2
//
// ChainKit 26.10.12 (Release)
// Built from b5e04b5d83a7808bb2911f52ef9d66037eb49680
// with kotlin 2.4.10 | Xcode 26.6 | iOS SDK 26.5 | wallet-core 4.8.3

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
            url: "https://github.com/tonkeeper/chainkit-publishing/releases/download/26.10.12/ChainKit.xcframework.zip",
            checksum: "f624d501c93f42b1335b7d7342db3df7a7a985ee791316fea7f56144da9fcb7c"
        ),
        .binaryTarget(
            name: "WalletCore",
            url: "https://github.com/trustwallet/wallet-core/releases/download/4.8.3/WalletCore.xcframework.zip",
            checksum: "c8a59e00c1d936a6e892990562bfffa33297b43e45ea79dcd4d90eb464382de3"
        ),
        .binaryTarget(
            name: "WalletCoreSwiftProtobuf",
            url: "https://github.com/trustwallet/wallet-core/releases/download/4.8.3/WalletCoreSwiftProtobuf.xcframework.zip",
            checksum: "bb0ca314eba47a42043168a11f3323df556d23fcc18af473fdbc378eaf733927"
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
