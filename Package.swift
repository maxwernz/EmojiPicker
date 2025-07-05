// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EmojiPicker",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "EmojiPicker",
            targets: ["EmojiPicker"]
        )
    ],
    targets: [
        .target(
            name: "EmojiPicker",
            resources: [
                .process("Resources/emojis.json")
            ]
        )
    ]

)
