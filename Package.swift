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
            url: "https://github.com/admost/AMR-IOS-ADAPTER-CHARTBOOST/releases/download/9.11.0/AMRAdapterChartboost.xcframework.zip",
            checksum: "dac9387d65c4a0906d5d204f492f897011e38d80908cd14dc13387bf2564159d"
        ),
        .binaryTarget(
            name: "ChartboostSDK",
            url: "https://s3.amazonaws.com/chartboost/sdk/9.11.0/Chartboost-iOS-9.11.0.zip",
            checksum: "45e0b6bda95cedea7a4b55da023aedd97e8bbb9e6abc121fb207edf008e6ec6b"
        )
    ]
)
