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
            targets: ["hariSPM"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "hariSPM",
            url: "https://github.com/hariharaprabum/hariSPM/releases/download/1.0.2/BureauSDKiOS.xcframework.zip",
            checksum: "b5de3c318e7afde29967ceffe8b9d8e7c8fce58aa65b4fe169f26a83b9cff1e6"
        )
    ]
)

