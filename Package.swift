// swift-tools-version: 6.2

import PackageDescription

extension String {
    static let css: Self = "CSS"
    static let cssTheming: Self = "CSS Theming"
}

extension Target.Dependency {
    static var css: Self { .target(name: .css) }
    static var cssTheming: Self { .target(name: .cssTheming) }
}

extension Target.Dependency {
    static var cssStandard: Self {
        .product(name: "CSS Standard", package: "swift-css-standard")
    }
    static var cssHTMLRendering: Self {
        .product(name: "CSS HTML Rendering", package: "swift-css-html-rendering")
    }
    static var htmlRenderable: Self {
        .product(name: "HTML Renderable", package: "swift-html-rendering")
    }
    static var htmlRenderableTestSupport: Self {
        .product(name: "HTML Rendering TestSupport", package: "swift-html-rendering")
    }
    static var dependencies: Self {
        .product(name: "Dependencies", package: "swift-dependencies")
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
        .library(name: .cssTheming, targets: [.cssTheming]),
    ],
    dependencies: [
        .package(url: "https://github.com/coenttb/swift-css-html-rendering", from: "0.1.5"),
        .package(url: "https://github.com/coenttb/swift-html-rendering", from: "0.1.12"),
        .package(url: "https://github.com/swift-standards/swift-css-standard", from: "0.1.6"),
        .package(url: "https://github.com/pointfreeco/swift-dependencies", from: "1.9.2"),
    ],
    targets: [
        .target(
            name: .css,
            dependencies: [
                .cssHTMLRendering,
                .cssStandard,
            ]
        ),
        .target(
            name: .cssTheming,
            dependencies: [
                .css,
                .cssStandard,
                .dependencies,
            ]
        ),
        .testTarget(
            name: .css.tests,
            dependencies: [
                .css,
                .cssTheming,
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
