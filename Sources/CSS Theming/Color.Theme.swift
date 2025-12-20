//
//  File.swift
//  coenttb-html
//
//  Created by Coen ten Thije Boonkkamp on 12/03/2025.
//

import CSS_Standard
import Foundation

extension DarkModeColor {
    public struct Theme: Sendable {
        /// Global prepared value (set via `prepareDependencies`)
        nonisolated(unsafe) private static var _prepared: DarkModeColor.Theme = .default

        /// Scoped override (set via `withDependencies`)
        @TaskLocal private static var _scoped: DarkModeColor.Theme? = nil

        /// Current theme value. Returns scoped override if set, otherwise prepared value.
        public static var current: DarkModeColor.Theme {
            _scoped ?? _prepared
        }

        /// Set the global prepared value.
        public static func _prepare(_ value: DarkModeColor.Theme) {
            _prepared = value
        }

        public var gray: DarkModeColor
        public var blue: DarkModeColor
        public var green: DarkModeColor
        public var purple: DarkModeColor
        public var red: DarkModeColor
        public var yellow: DarkModeColor
        public var orange: DarkModeColor
        public var teal: DarkModeColor
        public var cyan: DarkModeColor
        public var pink: DarkModeColor
        public var brown: DarkModeColor
        public var black: DarkModeColor
        public var offBlack: DarkModeColor
        public var white: DarkModeColor
        public var offWhite: DarkModeColor
        public var neutral: DarkModeColor
        public var info: DarkModeColor
        public var text: DarkModeColor.Theme.Text
        public var background: DarkModeColor.Theme.Background
        public var border: DarkModeColor.Theme.Border
        public var branding: DarkModeColor.Theme.Branding
    }
}

extension DarkModeColor.Theme {
    public struct Text: Sendable {
        public var primary: DarkModeColor
        public var secondary: DarkModeColor
        public var tertiary: DarkModeColor

        public var link: DarkModeColor
        public var linkHover: DarkModeColor
        public var button: DarkModeColor

        public var error: DarkModeColor
        public var success: DarkModeColor
        public var warning: DarkModeColor
        public var info: DarkModeColor
        public var neutral: DarkModeColor

        public var inverted: DarkModeColor
        public var disabled: DarkModeColor

        public init(
            primary: DarkModeColor,
            secondary: DarkModeColor,
            tertiary: DarkModeColor,
            link: DarkModeColor,
            linkHover: DarkModeColor? = nil,
            button: DarkModeColor,
            error: DarkModeColor,
            success: DarkModeColor,
            warning: DarkModeColor,
            info: DarkModeColor? = nil,
            neutral: DarkModeColor? = nil,
            inverted: DarkModeColor,
            disabled: DarkModeColor
        ) {
            self.primary = primary
            self.secondary = secondary
            self.tertiary = tertiary
            self.link = link
            self.linkHover = linkHover ?? link
            self.button = button
            self.error = error
            self.success = success
            self.warning = warning
            self.info = info ?? link
            self.neutral = neutral ?? secondary
            self.inverted = inverted
            self.disabled = disabled
        }
    }
}

extension DarkModeColor.Theme {
    public struct Background: Sendable {
        public var primary: DarkModeColor
        public var secondary: DarkModeColor
        public var tertiary: DarkModeColor

        public var elevated: DarkModeColor
        public var grouped: DarkModeColor

        public var selected: DarkModeColor
        public var highlighted: DarkModeColor

        public var button: DarkModeColor
        public var buttonHover: DarkModeColor

        public var error: DarkModeColor
        public var errorMuted: DarkModeColor
        public var success: DarkModeColor
        public var successMuted: DarkModeColor
        public var warning: DarkModeColor
        public var warningMuted: DarkModeColor
        public var info: DarkModeColor
        public var infoMuted: DarkModeColor
        public var neutral: DarkModeColor

        public init(
            primary: DarkModeColor,
            secondary: DarkModeColor,
            tertiary: DarkModeColor,
            elevated: DarkModeColor,
            grouped: DarkModeColor,
            selected: DarkModeColor,
            highlighted: DarkModeColor,
            button: DarkModeColor,
            buttonHover: DarkModeColor? = nil,
            error: DarkModeColor,
            errorMuted: DarkModeColor? = nil,
            success: DarkModeColor,
            successMuted: DarkModeColor? = nil,
            warning: DarkModeColor,
            warningMuted: DarkModeColor? = nil,
            info: DarkModeColor? = nil,
            infoMuted: DarkModeColor? = nil,
            neutral: DarkModeColor? = nil
        ) {
            self.primary = primary
            self.secondary = secondary
            self.tertiary = tertiary
            self.elevated = elevated
            self.grouped = grouped
            self.selected = selected
            self.highlighted = highlighted
            self.button = button
            self.buttonHover = buttonHover ?? button
            self.error = error
            self.errorMuted = errorMuted ?? error
            self.success = success
            self.successMuted = successMuted ?? success
            self.warning = warning
            self.warningMuted = warningMuted ?? warning
            self.info = info ?? highlighted
            self.infoMuted = infoMuted ?? highlighted
            self.neutral = neutral ?? secondary
        }
    }
}

extension DarkModeColor.Theme {
    public struct Border: Sendable {
        public var primary: DarkModeColor
        public var secondary: DarkModeColor
        public var tertiary: DarkModeColor

        public var selected: DarkModeColor
        public var highlighted: DarkModeColor
        public var hover: DarkModeColor

        public var button: DarkModeColor

        public var error: DarkModeColor
        public var success: DarkModeColor
        public var warning: DarkModeColor
        public var info: DarkModeColor
        public var infoMuted: DarkModeColor
        public var neutral: DarkModeColor

        public init(
            primary: DarkModeColor,
            secondary: DarkModeColor,
            tertiary: DarkModeColor,
            selected: DarkModeColor,
            highlighted: DarkModeColor,
            hover: DarkModeColor? = nil,
            button: DarkModeColor,
            error: DarkModeColor,
            success: DarkModeColor,
            warning: DarkModeColor,
            info: DarkModeColor? = nil,
            infoMuted: DarkModeColor? = nil,
            neutral: DarkModeColor? = nil
        ) {
            self.primary = primary
            self.secondary = secondary
            self.tertiary = tertiary
            self.selected = selected
            self.highlighted = highlighted
            self.hover = hover ?? highlighted
            self.button = button
            self.error = error
            self.success = success
            self.warning = warning
            self.info = info ?? highlighted
            self.infoMuted = infoMuted ?? highlighted
            self.neutral = neutral ?? secondary
        }
    }
}

extension DarkModeColor.Theme {
    public struct Branding: Sendable {
        public var primary: DarkModeColor
        public var secondary: DarkModeColor
        public var accent: DarkModeColor
        public var primarySubtle: DarkModeColor
        public var secondarySubtle: DarkModeColor

        public init(
            primary: DarkModeColor,
            secondary: DarkModeColor,
            accent: DarkModeColor,
            primarySubtle: DarkModeColor,
            secondarySubtle: DarkModeColor
        ) {
            self.primary = primary
            self.secondary = secondary
            self.accent = accent
            self.primarySubtle = primarySubtle
            self.secondarySubtle = secondarySubtle
        }
    }
}

extension DarkModeColor {
    public static var theme: DarkModeColor.Theme {
        DarkModeColor.Theme.current
    }
}

extension DarkModeColor {
    public static var text: DarkModeColor.Theme.Text {
        DarkModeColor.Theme.current.text
    }
}

extension DarkModeColor {
    public static var background: DarkModeColor.Theme.Background {
        DarkModeColor.Theme.current.background
    }
}

extension DarkModeColor {
    public static var border: DarkModeColor.Theme.Border {
        DarkModeColor.Theme.current.border
    }
}

extension DarkModeColor {
    public static var branding: DarkModeColor.Theme.Branding {
        DarkModeColor.Theme.current.branding
    }
}

extension DarkModeColor {
    public static var gray: Self { DarkModeColor.Theme.current.gray }
    public static var black: Self { DarkModeColor.Theme.current.black }
    public static var offBlack: Self { DarkModeColor.Theme.current.offBlack }
    public static var white: Self { DarkModeColor.Theme.current.white }
    public static var offWhite: Self { DarkModeColor.Theme.current.offWhite }
    public static var cyan: Self { DarkModeColor.Theme.current.cyan }
    public static var teal: Self { DarkModeColor.Theme.current.teal }
    public static var pink: Self { DarkModeColor.Theme.current.pink }
    public static var brown: Self { DarkModeColor.Theme.current.brown }
    public static var orange: Self { DarkModeColor.Theme.current.orange }
    public static var green: Self { DarkModeColor.Theme.current.green }
    public static var purple: Self { DarkModeColor.Theme.current.purple }
    public static var blue: Self { DarkModeColor.Theme.current.blue }
    public static var red: Self { DarkModeColor.Theme.current.red }
    public static var yellow: Self { DarkModeColor.Theme.current.yellow }
    public static var neutral: Self { DarkModeColor.Theme.current.neutral }
    public static var info: Self { DarkModeColor.Theme.current.info }

    public static let transparent: Self = .init(light: .transparent, dark: .transparent)
}

extension DarkModeColor {
    public static let cardBackground: Self = .init(
        light: .rgb(red: 245, green: 246, blue: 248),
        dark: .rgb(red: 25, green: 25, blue: 27)
    )
}

extension DarkModeColor {
    public static let buttonBackground: Self = .cardBackground
}

// MARK: - Convenience API for setting theme

extension DarkModeColor.Theme {
    /// Execute an operation with a custom theme.
    ///
    /// Usage:
    /// ```swift
    /// DarkModeColor.Theme.withValue(.github) {
    ///     // Code here sees .github theme
    /// }
    /// ```
    public static func withValue<R>(
        _ theme: DarkModeColor.Theme,
        operation: () throws -> R
    ) rethrows -> R {
        try $_scoped.withValue(theme, operation: operation)
    }

    /// Execute an async operation with a custom theme.
    public static func withValue<R>(
        _ theme: DarkModeColor.Theme,
        operation: () async throws -> R
    ) async rethrows -> R {
        try await $_scoped.withValue(theme, operation: operation)
    }
}
