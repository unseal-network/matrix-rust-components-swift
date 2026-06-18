// swift-tools-version:5.6

import PackageDescription

let checksum = "52375a9df92ded7c386db73e0c01cc8b5cb3460fc0fff7fcbb28e7233ae8536d"
let binaryArtifactVersion = "26.06.18"
let url = "https://github.com/unseal-network/matrix-rust-components-swift/releases/download/\(binaryArtifactVersion)/MatrixSDKFFI.xcframework.zip"

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
