// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
// Generated file. Do not edit.
//

import PackageDescription

let package = Package(
    name: "FlutterGeneratedPluginSwiftPackage",
    platforms: [
        .iOS("15.0")
    ],
    products: [
        .library(name: "FlutterGeneratedPluginSwiftPackage", type: .static, targets: ["FlutterGeneratedPluginSwiftPackage"])
    ],
    dependencies: [
        .package(name: "firebase_app_check", path: "../.packages/firebase_app_check-0.5.1"),
        .package(name: "firebase_auth", path: "../.packages/firebase_auth-7.0.1"),
        .package(name: "firebase_core", path: "../.packages/firebase_core-5.1.0"),
        .package(name: "FlutterFramework", path: "../.packages/FlutterFramework")
    ],
    targets: [
        .target(
            name: "FlutterGeneratedPluginSwiftPackage",
            dependencies: [
                .product(name: "firebase-app-check", package: "firebase_app_check"),
                .product(name: "firebase-auth", package: "firebase_auth"),
                .product(name: "firebase-core", package: "firebase_core"),
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ]
        )
    ]
)
