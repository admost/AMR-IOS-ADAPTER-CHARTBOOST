// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AMRAdapterChartboost",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "AMRAdapterChartboost",
            targets: ["AMRAdapterChartboost"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/admost/AMR-IOS-SDK.git", from: "1.5.84")
    ],
    targets: [
        .target(
            name: "AMRAdapterChartboost",
            dependencies: [
                "AMRAdapterChartboostLib",
                "ChartboostSDK",
                .product(name: "AMRSDK", package: "AMR-IOS-SDK")
            ],
            path: "AMRAdapterChartboost",
            exclude: ["Libs"],
            linkerSettings: [
                .linkedLibrary("c++")
            ]
        ),
        .binaryTarget(
            name: "AMRAdapterChartboostLib",
            url: "https://github.com/admost/AMR-IOS-ADAPTER-CHARTBOOST/releases/download/9.14.2/AMRAdapterChartboost.xcframework.zip",
            checksum: "274fa48c3ff4b4110b5133a4d795ad36276e5534786f8ea437d68ec5e043ce4c"
        ),
        .binaryTarget(
            name: "ChartboostSDK",
            url: "https://s3.amazonaws.com/chartboost/sdk/9.14.2/Chartboost-iOS-9.14.2.zip",
            checksum: "08e916571f1c6fba2128f50d6eb993ef0c20745a819ebd3533f7a6f3b5683501"
        )
    ]
)
