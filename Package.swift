// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AnyThinkMediationMolocoAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AnyThinkMediationMolocoAdapter",
            targets: ["AnyThinkMediationMolocoAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/TakuMediation-packages/AnyThinkiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/moloco/moloco-sdk-ios-spm.git", exact: "4.8.0")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkMolocoAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkMolocoAdapter/4.10.0.2.9/AnyThinkMolocoAdapter-4.10.0.2.9.zip",
            checksum: "97423b6c9bbc63af89a018526c977ebb41692b30f30e09bf9e26b791c9f0b6e5"
        ),
        .target(
            name: "AnyThinkMediationMolocoAdapterTarget",
            dependencies: [
                "AnyThinkMolocoAdapter",
                .product(name: "AnyThinkiOS", package: "AnyThinkiOS_SPM"),
                .product(name: "MolocoSDK", package: "moloco-sdk-ios-spm")
            ],
            path: "Sources/AnyThinkMediationMolocoAdapterTarget"
        )
    ]
)
