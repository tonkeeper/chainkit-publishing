// swift-tools-version: 6.2
//
// ChainKit 26.10.7 (Release)
// Built from e872a4d1503af0275dbc4ad9bf5626d6b1b34600
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
            url: "https://github.com/tonkeeper/chainkit-publishing/releases/download/26.10.7/ChainKit.xcframework.zip",
            checksum: "ecf2c804c2278b61e365872a3988525694bd981ab1c8bad319abaf79332c1675"
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
