//
//  File.swift
//  coenttb-html
//
//  Created by Coen ten Thije Boonkkamp on 12/03/2025.
//

import CSS_Standard
import Dependencies
import Foundation

extension DarkModeColor {
    public struct Theme: Sendable {
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
        @Dependency(\.theme) var color
        return color
    }
}

extension DarkModeColor {
    public static var text: DarkModeColor.Theme.Text {
        @Dependency(\.theme.text) var text
        return text
    }
}

extension DarkModeColor {
    public static var background: DarkModeColor.Theme.Background {
        @Dependency(\.theme.background) var background
        return background
    }
}

extension DarkModeColor {
    public static var border: DarkModeColor.Theme.Border {
        @Dependency(\.theme.border) var border
        return border
    }
}

extension DarkModeColor {
    public static var branding: DarkModeColor.Theme.Branding {
        @Dependency(\.theme.branding) var branding
        return branding
    }
}

extension DarkModeColor.Theme: DependencyKey {
    public static var liveValue: Self { .default }
    public static var testValue: Self { liveValue }
    public static var previewValue: Self { liveValue }
}

extension DependencyValues {
    public var theme: DarkModeColor.Theme {
        get { self[DarkModeColor.Theme.self] }
        set { self[DarkModeColor.Theme.self] = newValue }
    }
}

extension DarkModeColor {
    public static var gray: Self {
        @Dependency(\.theme.gray) var gray
        return gray
    }
    public static var black: Self {
        @Dependency(\.theme.black) var black
        return black
    }
    public static var offBlack: Self {
        @Dependency(\.theme.offBlack) var offBlack
        return offBlack
    }
    public static var white: Self {
        @Dependency(\.theme.white) var white
        return white
    }
    public static var offWhite: Self {
        @Dependency(\.theme.offWhite) var offWhite
        return offWhite
    }
    public static var cyan: Self {
        @Dependency(\.theme.cyan) var cyan
        return cyan
    }
    public static var teal: Self {
        @Dependency(\.theme.teal) var teal
        return teal
    }
    public static var pink: Self {
        @Dependency(\.theme.pink) var pink
        return pink
    }
    public static var brown: Self {
        @Dependency(\.theme.brown) var brown
        return brown
    }

    public static var orange: Self {
        @Dependency(\.theme.orange) var orange
        return orange
    }
    public static var green: Self {
        @Dependency(\.theme.green) var green
        return green
    }
    public static var purple: Self {
        @Dependency(\.theme.purple) var purple
        return purple
    }
    public static var blue: Self {
        @Dependency(\.theme.blue) var blue
        return blue
    }
    public static var red: Self {
        @Dependency(\.theme.red) var red
        return red
    }
    public static var yellow: Self {
        @Dependency(\.theme.yellow) var yellow
        return yellow
    }
    public static var neutral: Self {
        @Dependency(\.theme.neutral) var neutral
        return neutral
    }
    public static var info: Self {
        @Dependency(\.theme.info) var info
        return info
    }

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
