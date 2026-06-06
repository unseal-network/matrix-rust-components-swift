// swift-tools-version:5.6

import PackageDescription

let checksum = "f588d895b782fedcce0fbd0b6a4c5956f667699208a4c1fb7619ef8b79a3f92f"
let binaryArtifactVersion = "26.06.02"
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
