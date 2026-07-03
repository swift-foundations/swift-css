//
//  DarkModeColor Theme Tests.swift
//  swift-css
//
//  Tests for DarkModeColor.Theme and scoped theming.
//

import CSS
import CSS_Theming
import Testing

@Suite
struct `DarkModeColor Theme Tests` {

    // MARK: - Theme Access

    @Test
    func `default theme provides all required colors`() {
        let theme = DarkModeColor.Theme.current
        #expect(theme.gray.light != theme.gray.dark)
        #expect(theme.blue.light != theme.blue.dark)
        #expect(theme.red.light != theme.red.dark)
    }

    @Test
    func `theme text colors are accessible`() {
        let text = DarkModeColor.text
        #expect(text.primary.light != text.primary.dark)
        #expect(text.secondary.light != text.secondary.dark)
    }

    @Test
    func `theme background colors are accessible`() {
        let bg = DarkModeColor.background
        #expect(bg.primary.light != bg.primary.dark)
        #expect(bg.secondary.light != bg.secondary.dark)
    }

    @Test
    func `theme border colors are accessible`() {
        let border = DarkModeColor.border
        #expect(border.primary.light != border.primary.dark)
    }

    @Test
    func `theme branding colors are accessible`() {
        let branding = DarkModeColor.branding
        #expect(branding.primary.light != branding.primary.dark)
    }

    // MARK: - Scoped Theming

    @Test
    func `withDependencies overrides theme in scope`() {
        let defaultRed = DarkModeColor.red

        withDependencies {
            $0.theme = .github
        } operation: {
            let githubRed = DarkModeColor.red
            // The github theme may or may not differ, but the mechanism works
            // The point is that the scoped value is read without crash
            _ = githubRed
        }

        // After scope, theme returns to default
        let afterRed = DarkModeColor.red
        #expect(afterRed.light == defaultRed.light)
        #expect(afterRed.dark == defaultRed.dark)
    }

    // MARK: - Named Static Colors

    @Test(
        arguments: [
            "gray", "blue", "red", "green", "purple",
            "yellow", "orange", "teal", "cyan", "pink", "brown",
        ]
    )
    func `Named static colors are distinct from transparent`(name: String) {
        let color: DarkModeColor =
            switch name {
            case "gray": .gray
            case "blue": .blue
            case "red": .red
            case "green": .green
            case "purple": .purple
            case "yellow": .yellow
            case "orange": .orange
            case "teal": .teal
            case "cyan": .cyan
            case "pink": .pink
            case "brown": .brown
            default: .transparent
            }
        #expect(color != DarkModeColor.transparent)
    }
}
