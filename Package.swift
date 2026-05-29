// swift-tools-version:5.6

import PackageDescription

let checksum = "c85facf06551d94298bd4dcac63ff48c8ce8c364b297bfae5c9df1d0cdfdc785"
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
