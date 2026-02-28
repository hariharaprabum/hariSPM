// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "hariSPM",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "hariSPM",
            targets: ["hariSPMWrapper"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/getsentry/sentry-cocoa.git",
            exact: "8.53.2"
        ),
        .package(
            url: "https://github.com/apple/swift-protobuf.git",
            "1.20.0"..<"2.0.0"
        )
    ],
    targets: [
        .binaryTarget(
            name: "hariSPM",
            url: "https://github.com/hariharaprabum/hariSPM/releases/download/1.0.4/bureau_id_fraud_sdk.xcframework.zip",
            checksum: "969849fc7a38e8f8bdf4282c83426f79939bf21eb6bc114bde586f15cb87bc44"
        ),
        .target(
            name: "hariSPMWrapper",
            dependencies: [
                "hariSPM",
                .product(name: "Sentry", package: "sentry-cocoa"),
                .product(name: "SwiftProtobuf", package: "swift-protobuf")
            ]
        )
    ]
)

