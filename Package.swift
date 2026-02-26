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
            checksum: "4f33693f1e9611817a599d86b82c6d68c16a372e7c276c8e35bb8f78f34a1e3e"
        )
    ]
)

