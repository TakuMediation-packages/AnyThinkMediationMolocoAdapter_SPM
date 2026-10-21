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
            checksum: "d1311f94779ed735ed8b4483ae16669e8170b410e6278cd4d942ea52cb12c1f1"
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
