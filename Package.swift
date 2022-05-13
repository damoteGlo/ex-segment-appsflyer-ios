// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Glo.Segment-AppsFlyer",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "segment-appsflyer-ios",
            targets: ["segment-appsflyer-ios"]),
    ],
    dependencies: [
        .package(url: "https://github.com/segmentio/analytics-ios.git", from: "4.0.0"),
        .package(url: "https://github.com/AppsFlyerSDK/AppsFlyerFramework-Strict.git", exact: "6.6.0")
    ],
    targets: [
        .target(
            name: "segment-appsflyer-ios",
            dependencies: [
                .product(name: "Segment", package: "analytics-ios"),
                .product(name: "AppsFlyerLib-Strict", package: "AppsFlyerFramework-Strict"),
                ],
            path: "segment-appsflyer-ios/Classes",
            publicHeadersPath: ""
            )
    ]
)
