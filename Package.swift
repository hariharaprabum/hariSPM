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
            url: "https://github.com/hariharaprabum/hariSPM/releases/download/1.0.0/BureauSDKiOS.xcframework.zip",
            checksum: "4cd69e6b8c6108d257768fb847ee0a07f37ce66510e9bf8ed83a5b7f7eec2ee9"
        )
    ]
)

