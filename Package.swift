// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftLambdaApp",
    platforms: [
       .macOS(.v10_15)
    ],
    products: [
         .executable(name: "SwiftLambdaApp", targets: ["SwiftLambdaApp"]),
       ],
    dependencies: [
        .package(url: "https://github.com/swift-server/swift-aws-lambda-runtime.git", .upToNextMajor(from:"0.3.0"))
    ],
    targets: [
        .target(
            name: "SwiftLambdaApp",
            dependencies: [
                .product(name: "AWSLambdaRuntime", package: "swift-aws-lambda-runtime")
            ]
        ),
        .testTarget(
            name: "SwiftLambdaAppTests",
            dependencies: ["SwiftLambdaApp"]),
    ]
)
