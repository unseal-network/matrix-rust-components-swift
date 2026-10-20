# MatrixRustSDK 26.10.20

- Source repository: `git@pagepeek:unseal-network/matrix-rust-sdk.git`
- Source ref: `matrix-sdk/20261020`
- Source commit: `03576c2d2031ce604ff4d8656d3b805f9b967150`
- Artifact repository: `git@pagepeek:unseal-network/matrix-rust-components-swift.git`
- Swift package version: `26.10.20`
- Binary artifact version: `26.10.20`
- Binary asset: `https://github.com/unseal-network/matrix-rust-components-swift/releases/download/26.10.20/MatrixSDKFFI.xcframework.zip`
- Binary checksum: `e4a5fce17e7b3ab3290407b2944140de3270ac5339f48c26245a80a77e4cd2a1`
- Platforms: iOS device (arm64) and iOS simulator (arm64, x86_64); minimum iOS 18.0
- Changes since 26.06.18 (source `94bad0b7`):
  - widget: run Matrix driver requests concurrently, so a slow download no longer
    delays delayed-event restarts (`cd3204d60`);
  - FFI: `Room.sendStateEventRaw`, `Client.requestOpenidToken` and
    `Client.discoverRtcTransports` for native MatrixRTC calls. The Swift
    bindings only gain API; nothing is removed or changed.
- Note: Built from the `matrix-sdk/20261020` source tag with
  `cargo xtask swift build-framework --release --target aarch64-apple-ios
  --target aarch64-apple-ios-sim --target x86_64-apple-ios --ios-deployment-target 18.0`.
  The release artifact includes both root `Headers/module.modulemap` files for
  SwiftPM/Xcode module discovery and nested `Headers/MatrixSDKFFI/module.modulemap`
  files for compatibility with the generated framework layout.
