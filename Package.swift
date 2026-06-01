// swift-tools-version:5.6

import PackageDescription

let checksum = "1562c0dbda8ba25df67d48264a5c96105ca8ed583a8132f841ed0e5a25d6d5c9"
let version = "26.05.29"
let url = "https://github.com/unseal-network/matrix-rust-components-swift/releases/download/\(version)/MatrixSDKFFI.xcframework.zip"

let package = Package(
    name: "MatrixRustSDK",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(
            name: "MatrixRustSDK",
            type: .dynamic,
            targets: ["MatrixRustSDK"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "MatrixSDKFFI",
            url: url,
            checksum: checksum
        ),
        .target(
            name: "MatrixRustSDK",
            dependencies: [.target(name: "MatrixSDKFFI")],
            path: "Sources/MatrixRustSDK"
        ),
    ]
)
