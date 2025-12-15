// swift-tools-version: 6.2

import PackageDescription

extension String {
    static let css: Self = "CSS"
}

extension Target.Dependency {
    static var css: Self { .target(name: .css) }
}

extension Target.Dependency {
    static var cssStandard: Self {
        .product(name: "CSS Standard", package: "swift-css-standard")
    }
    static var htmlRenderable: Self {
        .product(name: "HTML Renderable", package: "swift-html-rendering")
    }
    static var htmlRenderableTestSupport: Self {
        .product(name: "HTML Rendering TestSupport", package: "swift-html-rendering")
    }
}

let package = Package(
    name: "swift-css",
    platforms: [
        .macOS(.v26),
        .iOS(.v26),
        .tvOS(.v26),
        .watchOS(.v26),
        .visionOS(.v26),
    ],
    products: [
        .library(name: .css, targets: [.css]),
    ],
    dependencies: [
        .package(url: "https://github.com/coenttb/swift-html-rendering", from: "0.1.0"),
        .package(url: "https://github.com/swift-standards/swift-css-standard", from: "0.1.0"),
    ],
    targets: [
        .target(
            name: .css,
            dependencies: [
                .htmlRenderable,
                .cssStandard,
            ]
        ),
        .testTarget(
            name: .css.tests,
            dependencies: [
                .css,
                .htmlRenderableTestSupport
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)

extension String {
    var tests: Self { self + " Tests" }
}

for target in package.targets where ![.system, .binary, .plugin].contains(target.type) {
    let existing = target.swiftSettings ?? []
    target.swiftSettings = existing + [
        .enableUpcomingFeature("ExistentialAny"),
        .enableUpcomingFeature("InternalImportsByDefault"),
        .enableUpcomingFeature("MemberImportsByDefault")
    ]
}
