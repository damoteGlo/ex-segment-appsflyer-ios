// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "segment-appsflyer-ios",
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
        .package(url: "https://github.com/damoteGlo/ex-glo-apple-appsflyer.git", branch: "glo-develop")
    ],
    targets: [
        .target(
            name: "segment-appsflyer-ios",
            dependencies: [
                .product(name: "Segment", package: "analytics-ios"),
                .product(name: "AppsFlyerLib", package: "ex-glo-apple-appsflyer"),
                ],
            path: "segment-appsflyer-ios/Classes",
            publicHeadersPath: ""
            )
    ]
)
