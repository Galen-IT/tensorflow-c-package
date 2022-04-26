// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "galenit-tensorflowc",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "GalenitTensorFlowC",
            targets: ["TensorFlowLiteC", "TensorFlowLiteCCoreML", "TensorFlowLiteCMetal"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "TensorFlowLiteC",
            url: "https://github.com/galen-it/tensorflow-ios-package/releases/download/2.7.10/TensorFlowLiteC.xcframework.zip",
            checksum: "86c944d7b108f2f27a637bdb9cc6685ed93f27ee5acbbf1663a12d2da856a014"
        ),
        .binaryTarget(
            name: "TensorFlowLiteCCoreML",
            url: "https://github.com/galen-it/tensorflow-ios-package/releases/download/2.7.10/TensorFlowLiteCCoreML.xcframework.zip",
            checksum: "651840dc4619804503d5deb288806cfa24e67d311fbec5882bebccffd0c7d376"
        ),
        .binaryTarget(
            name: "TensorFlowLiteCMetal",
            url: "https://github.com/galen-it/tensorflow-ios-package/releases/download/2.7.10/TensorFlowLiteCMetal.xcframework.zip",
            checksum: "857a696d9b3c1e3f53e5db24291bcbf51d5b945f10122661957e31384fa58720"
        )
    ]
)
