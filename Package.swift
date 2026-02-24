// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "IQKeyboardToolbarManager",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "IQKeyboardToolbarManager",
            targets: ["IQKeyboardToolbarManager"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/hackiftekhar/IQKeyboardToolbar.git", from: "1.1.2"),
        .package(url: "https://github.com/hackiftekhar/IQTextInputViewNotification", from: "1.0.8"),
        .package(url: "https://github.com/hackiftekhar/IQKeyboardCore.git", from: "1.0.8"),
    ],
    targets: [
        .target(name: "IQKeyboardToolbarManager",
            dependencies: [
                .product(name: "IQKeyboardToolbar", package: "IQKeyboardToolbar"),
                .product(name: "IQTextInputViewNotification", package: "IQTextInputViewNotification"),
                .product(name: "IQKeyboardCore", package: "IQKeyboardCore"),
            ],
            path: "IQKeyboardToolbarManager",
            resources: [
                .copy("Assets/PrivacyInfo.xcprivacy")
            ],
            linkerSettings: [
                .linkedFramework("Combine"),
                .linkedFramework("UIKit")
            ]
        )
    ]
)
