// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdsSdk",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AdsSdk",
            targets: ["AdsSdk"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "AdsSdk",
            dependencies: [
                "App",
                "Flutter"
            ]),
        .binaryTarget(
                    name: "App",
                    url: "https://github.com/mduccc/ads_sdk_framework/raw/main/App.xcframework.zip",
                    checksum: "f1bfdc107a7923044184f8618961d16eb998c8fc274e18b8fa499dae7c1d6c39"
                ),
        .binaryTarget(
                    name: "Flutter",
                    url: "https://github.com/mduccc/ads_sdk_framework/raw/main/Flutter.xcframework.zip",
                    checksum: "81b25a236be73d17ba052b7f9c05fa01d329f63a6c82965e63228806fa02a8c6"
                ),
        .testTarget(
            name: "AdsSdkTests",
            dependencies: ["AdsSdk"]),
    ]
)
