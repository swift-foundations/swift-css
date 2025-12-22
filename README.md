# swift-css

![Development Status](https://img.shields.io/badge/status-active--development-blue.svg)

Type-safe CSS styling for Swift HTML rendering. Chainable property methods, automatic class generation, dark mode support, and pre-built color themes. Swift 6 strict concurrency with full `Sendable` compliance.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Installation](#installation)
- [Quick Start](#quick-start)
- [Usage Examples](#usage-examples)
- [Theming](#theming)
- [Architecture](#architecture)
- [Platform Support](#platform-support)
- [Related Packages](#related-packages)
- [Contributing](#contributing)
- [License](#license)

## Overview

swift-css provides a fluent API for styling HTML elements with CSS. Built on top of [swift-css-standard](https://github.com/swift-standards/swift-css-standard) and [swift-css-html-rendering](https://github.com/coenttb/swift-css-html-rendering), it offers convenience methods for common layout patterns and a theming system for consistent color schemes.

## Features

- **Chainable styling**: Fluent `.css.property()` methods on any HTML element
- **Automatic class generation**: Styles extracted to `<style>` block with generated class names
- **Layout utilities**: Flexbox, grid, positioning, spacing convenience methods
- **Dark mode colors**: `DarkModeColor` type for automatic light/dark switching
- **Pre-built themes**: Apple, GitHub, Vapor, Swift, and neutral color schemes
- **Media queries**: `.print`, `.screen`, `.hover` modifiers
- **Swift 6 strict concurrency**: Full `Sendable` compliance, no data races
- **Cross-platform**: macOS, iOS, Linux, and Windows support

## Installation

Add swift-css to your Package.swift:

```swift
dependencies: [
    .package(url: "https://github.com/coenttb/swift-css.git", from: "0.1.0")
]
```

Add to your target:

```swift
.target(
    name: "YourTarget",
    dependencies: [
        .product(name: "CSS", package: "swift-css"),
        .product(name: "CSS Theming", package: "swift-css"),  // Optional
    ]
)
```

### Requirements

- Swift 6.2+
- macOS 26.0+, iOS 26.0+, or Linux
- Xcode 26.0+ (for Apple platforms)

## Quick Start

### Basic Styling

```swift
import CSS

// Chain CSS properties on any HTML element
let styled = div.css
    .backgroundColor(.rgb(255, 0, 0))
    .color(.hex("333333"))
    .padding(.px(16))
    .margin(.px(8))

// Renders to:
// <style>.background-color-0{background-color:rgb(255, 0, 0)}...</style>
// <div class="background-color-0 color-0 padding-0 margin-0"></div>
```

### Layout Utilities

```swift
// Flexbox container
div.css.flexContainer(
    direction: .row,
    wrap: .wrap,
    justification: .spaceBetween,
    itemAlignment: .center
)

// Grid container
div.css.gridContainer(
    columns: .repeat(3, .fr(1)),
    gap: .px(16)
)

// Positioning
div.css.position(
    .absolute,
    top: .px(0),
    right: .px(0)
)

// Spacing
div.css.padding(.px(16))
div.css.margin(.px(8), .px(16))  // vertical, horizontal
```

### Media Queries and Pseudo-Classes

```swift
// Print-specific styles
div.css.print { $0.backgroundColor(.white) }

// Hover state
button.css.hover { $0.backgroundColor(.blue) }

// Custom selector prefix
div.css.selector(".card") { $0.padding(.px(20)) }
```

## Usage Examples

### Responsive Card Component

```swift
let card = div.css
    .backgroundColor(.white)
    .borderRadius(.px(8))
    .boxShadow(.init(x: 0, y: 2, blur: 4, color: .rgba(0, 0, 0, 0.1)))
    .padding(.px(24))
    .hover { $0.boxShadow(.init(x: 0, y: 4, blur: 8, color: .rgba(0, 0, 0, 0.15))) }
```

### Dark Mode Support

```swift
import CSS

// DarkModeColor automatically switches based on user preference
let headerColor = DarkModeColor(
    light: .hex("1a1a1a"),
    dark: .hex("f5f5f5")
)

div.css.color(headerColor)
```

### Using Themes

```swift
import CSS_Theming

// Set the global theme
DarkModeColor.Theme._prepare(.github)

// Access theme colors
div.css
    .backgroundColor(.background.primary)
    .color(.text.primary)
    .borderColor(.border.primary)

// Scoped theme override
DarkModeColor.Theme.withValue(.apple) {
    // Code here uses Apple theme colors
    renderHeader()
}
```

### Available Themes

| Theme | Description |
|-------|-------------|
| `.default` | Neutral grays |
| `.apple` | Apple HIG-inspired |
| `.github` | GitHub's color palette |
| `.vapor` | Vapor framework colors |
| `.swift` | Swift.org colors |
| `.slate` | Slate gray palette |
| `.zinc` | Zinc gray palette |
| `.stone` | Warm stone palette |
| `.minimal` | Minimal contrast |
| `.documentation` | Documentation-focused |

## Theming

The `CSS Theming` module provides a structured color system:

```swift
DarkModeColor.Theme {
    // Semantic colors
    text.primary, text.secondary, text.link
    background.primary, background.elevated, background.button
    border.primary, border.hover, border.error
    branding.primary, branding.accent

    // Base colors
    gray, blue, green, red, yellow, orange, purple, teal, cyan, pink
}
```

### Custom Theme

```swift
let customTheme = DarkModeColor.Theme(
    gray: .init(light: .hex("6b7280"), dark: .hex("9ca3af")),
    blue: .init(light: .hex("2563eb"), dark: .hex("3b82f6")),
    // ... other colors
    text: .init(
        primary: .init(light: .hex("111827"), dark: .hex("f9fafb")),
        secondary: .init(light: .hex("4b5563"), dark: .hex("d1d5db")),
        // ...
    ),
    background: .init(
        primary: .init(light: .hex("ffffff"), dark: .hex("111827")),
        // ...
    ),
    // ...
)

DarkModeColor.Theme._prepare(customTheme)
```

## Architecture

### Package Structure

```
swift-css
├── CSS                 # Core styling module
│   ├── Layout          # Flexbox, grid, positioning utilities
│   ├── Alignment       # Alignment convenience methods
│   ├── DarkModeColor   # Dark mode color support
│   └── Utility         # HStack, VStack helpers
└── CSS Theming         # Theme system
    ├── Color.Theme     # Theme structure
    ├── Font.Theme      # Typography themes
    └── Themes/         # Pre-built themes
```

### Dependencies

- [swift-css-standard](https://github.com/swift-standards/swift-css-standard): W3C CSS property types
- [swift-css-html-rendering](https://github.com/coenttb/swift-css-html-rendering): HTML-CSS integration
- [swift-html-rendering](https://github.com/coenttb/swift-html-rendering): HTML rendering infrastructure

## Platform Support

| Platform | Status | Notes |
|----------|--------|-------|
| macOS | Full | Primary development platform |
| iOS | Full | Same as macOS |
| Linux | Full | All features supported |
| Windows | Build | Builds successfully, tests skipped |

### Windows Status

The library builds on Windows with Swift 6.2. Tests are skipped due to upstream Swift toolchain issues with swift-syntax compilation.

## Related Packages

### In the Stack

- [swift-html](https://github.com/coenttb/swift-html): HTML document construction
- [swift-html-rendering](https://github.com/coenttb/swift-html-rendering): HTML to string/bytes rendering
- [swift-css-html-rendering](https://github.com/coenttb/swift-css-html-rendering): CSS-HTML integration layer

### Standards

- [swift-css-standard](https://github.com/swift-standards/swift-css-standard): W3C CSS property definitions
- [swift-html-standard](https://github.com/swift-standards/swift-html-standard): WHATWG HTML definitions

## Contributing

Contributions welcome. Please:

1. Add tests for new features
2. Follow Swift 6 strict concurrency conventions
3. Update documentation for API changes

## License

Apache 2.0 - See [LICENSE](LICENSE) for details.
