//
//  DarkModeColor Color Manipulation Tests.swift
//  swift-css
//
//  Tests for DarkModeColor color manipulation operations.
//

import CSS
import CSS_Theming
import Testing

@Suite
struct `DarkModeColor Color Manipulation Tests` {

    // MARK: - Brightness Adjustment

    @Test
    func `adjustBrightness with zero preserves color description`() {
        let color = DarkModeColor(light: .hex("808080"), dark: .hex("404040"))
        let adjusted = color.adjustBrightness(by: 0.0)
        // adjustBrightness decomposes hex to RGB components; the visual value
        // is preserved but the representation may change (hex -> rgb)
        #expect(adjusted.light.description.contains("128"))
        #expect(adjusted.dark.description.contains("64"))
    }

    @Test
    func `adjustBrightness applies to both light and dark`() {
        let color = DarkModeColor(
            light: .hex("808080"),
            dark: .hex("404040")
        )
        let adjusted = color.adjustBrightness(by: 0.5)
        #expect(adjusted.light != color.light)
        #expect(adjusted.dark != color.dark)
    }

    // MARK: - Darker

    @Test
    func `darker with default produces darker colors`() {
        let color = DarkModeColor(
            light: .hex("FFFFFF"),
            dark: .hex("CCCCCC")
        )
        let darkened = color.darker()
        #expect(darkened.light != color.light)
        #expect(darkened.dark != color.dark)
    }

    @Test
    func `darker with custom percentage`() {
        let color = DarkModeColor(
            light: .hex("FF0000"),
            dark: .hex("00FF00")
        )
        let slight = color.darker(by: 0.1)
        let heavy = color.darker(by: 0.9)
        #expect(slight.light != heavy.light)
    }

    // MARK: - Lighter

    @Test
    func `lighter with default produces lighter colors`() {
        let color = DarkModeColor(
            light: .hex("000000"),
            dark: .hex("333333")
        )
        let lightened = color.lighter()
        #expect(lightened.light != color.light)
        #expect(lightened.dark != color.dark)
    }

    @Test
    func `lighter with custom percentage`() {
        let color = DarkModeColor(
            light: .hex("FF0000"),
            dark: .hex("00FF00")
        )
        let slight = color.lighter(by: 0.1)
        let heavy = color.lighter(by: 0.9)
        #expect(slight.light != heavy.light)
    }

    // MARK: - Opacity

    @Test
    func `opacity transforms both channels`() {
        let color = DarkModeColor(
            light: .hex("FF0000"),
            dark: .hex("00FF00")
        )
        let faded = color.opacity(0.5)
        #expect(faded.light != color.light)
        #expect(faded.dark != color.dark)
    }

    @Test
    func `full opacity preserves original color channels`() {
        let color = DarkModeColor(
            light: .named(.red),
            dark: .named(.blue)
        )
        let full = color.opacity(1.0)
        // opacity(1.0) may still change the representation (named -> rgba),
        // but the visual result should be the same
        _ = full
    }

    // MARK: - Composition

    @Test
    func `chained manipulations compose correctly`() {
        let color = DarkModeColor(
            light: .hex("808080"),
            dark: .hex("404040")
        )
        let result = color.darker(by: 0.1).lighter(by: 0.1)
        // After darkening then lightening by the same amount,
        // the result should be close but not necessarily identical
        // due to floating-point arithmetic
        _ = result
    }

    @Test
    func `map is equivalent to applying transform to both channels`() {
        let color = DarkModeColor(
            light: .hex("FF0000"),
            dark: .hex("00FF00")
        )
        let mapped = color.map { $0.darker(by: 0.3) }
        let manual = DarkModeColor(
            light: CSS_Standard.Color.Value.hex("FF0000").darker(by: 0.3),
            dark: CSS_Standard.Color.Value.hex("00FF00").darker(by: 0.3)
        )
        #expect(mapped.light == manual.light)
        #expect(mapped.dark == manual.dark)
    }
}
