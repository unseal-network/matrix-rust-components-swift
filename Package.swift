// swift-tools-version:5.6

import PackageDescription

let checksum = "e4a5fce17e7b3ab3290407b2944140de3270ac5339f48c26245a80a77e4cd2a1"
let binaryArtifactVersion = "26.10.20"
let url = "https://github.com/unseal-network/matrix-rust-components-swift/releases/download/\(binaryArtifactVersion)/MatrixSDKFFI.xcframework.zip"

let package = Package(
    name: "MatrixRustSDK",
    platforms: [
        .iOS("18.0"),
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
