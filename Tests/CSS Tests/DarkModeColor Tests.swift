//
//  DarkModeColor Tests.swift
//  swift-css
//
//  Tests for DarkModeColor type and its operations.
//

import CSS
import CSS_Standard
import CSS_Theming
import Testing

@Suite("DarkModeColor Tests")
struct DarkModeColorTests {

    // MARK: - Initialization Tests

    @Test("Color initializes with standard color using diagonal embedding")
    func colorInitializesWithStandardColor() {
        let color = DarkModeColor(.hex("FF0000"))
        #expect(color.light.description == "#FF0000")
        #expect(color.dark.description == "#FF0000")
        #expect(color.isSingleColor == true)
    }

    @Test("Color initializes with explicit light and dark colors")
    func colorInitializesWithLightAndDarkColors() {
        let color = DarkModeColor(
            light: .hex("FF0000"),
            dark: .hex("00FF00")
        )
        #expect(color.light.description == "#FF0000")
        #expect(color.dark.description == "#00FF00")
        #expect(color.isSingleColor == false)
    }

    @Test("Color auto-darkens when dark is omitted")
    func colorAutoDarkensWhenDarkOmitted() {
        let color = DarkModeColor(light: .hex("FF0000"))
        #expect(color.dark != color.light)
        #expect(color.isSingleColor == false)
    }

    @Test("isSingleColor is true when light equals dark")
    func isSingleColorWhenEqual() {
        let color = DarkModeColor(light: .hex("FF0000"), dark: .hex("FF0000"))
        #expect(color.isSingleColor == true)
    }

    // MARK: - Description Tests

    @Test("Single color description shows just the color")
    func singleColorDescription() {
        let color = DarkModeColor(.hex("FF0000"))
        #expect(color.description == "#FF0000")
    }

    @Test("Color description includes media queries for different light/dark")
    func colorDescriptionIncludesMediaQueries() {
        let color = DarkModeColor(
            light: .hex("FF0000"),
            dark: .hex("00FF00")
        )
        let description = color.description
        #expect(description.contains("@media (prefers-color-scheme: light)"))
        #expect(description.contains("#FF0000"))
        #expect(description.contains("@media (prefers-color-scheme: dark)"))
        #expect(description.contains("#00FF00"))
    }

    // MARK: - Functor Operations

    @Test("map transforms both light and dark colors")
    func mapTransformsBothColors() {
        let color = DarkModeColor(
            light: .hex("FF0000"),
            dark: .hex("00FF00")
        )
        let transformed = color.map { _ in .hex("0000FF") }
        #expect(transformed.light.description == "#0000FF")
        #expect(transformed.dark.description == "#0000FF")
    }

    @Test("flatMap extracts light from light transform, dark from dark transform")
    func flatMapTransformsColors() {
        let color = DarkModeColor(
            light: .hex("FF0000"),
            dark: .hex("00FF00")
        )
        let transformed = color.flatMap { _ in
            DarkModeColor(
                light: .hex("0000FF"),
                dark: .hex("FF00FF")
            )
        }
        #expect(transformed.light.description == "#0000FF")
        #expect(transformed.dark.description == "#FF00FF")
    }

    // MARK: - Color Manipulation

    @Test("adjustBrightness changes color brightness")
    func adjustBrightnessChangesColorBrightness() {
        let color = DarkModeColor(
            light: .hex("FF0000"),
            dark: .hex("00FF00")
        )
        let brightened = color.adjustBrightness(by: 0.2)
        #expect(brightened.light != color.light)
        #expect(brightened.dark != color.dark)
    }

    @Test("darker makes colors darker")
    func darkerMakesColorsDarker() {
        let color = DarkModeColor(
            light: .hex("FF0000"),
            dark: .hex("00FF00")
        )
        let darkened = color.darker(by: 0.3)
        #expect(darkened.light != color.light)
        #expect(darkened.dark != color.dark)
    }

    @Test("lighter makes colors lighter")
    func lighterMakesColorsLighter() {
        let color = DarkModeColor(
            light: .hex("FF0000"),
            dark: .hex("00FF00")
        )
        let lightened = color.lighter(by: 0.3)
        #expect(lightened.light != color.light)
        #expect(lightened.dark != color.dark)
    }

    @Test("opacity applies to both colors")
    func opacityAppliesToBothColors() {
        let color = DarkModeColor(
            light: .hex("FF0000"),
            dark: .hex("00FF00")
        )
        let faded = color.opacity(0.5)
        #expect(faded.light != color.light)
        #expect(faded.dark != color.dark)
    }

    // MARK: - Convenience Methods

    @Test("withDarkColor creates new DarkModeColor with specified dark")
    func withDarkColorCreatesNewColor() {
        let original = DarkModeColor(.hex("FF0000"))
        let modified = original.withDarkColor(.hex("00FF00"))
        #expect(modified.light.description == "#FF0000")
        #expect(modified.dark.description == "#00FF00")
    }

    @Test("Color.Value.withDarkColor creates DarkModeColor")
    func colorValueWithDarkColor() {
        let darkMode = CSS_Standard.Color.Value.hex("FF0000").withDarkColor(.hex("00FF00"))
        #expect(darkMode.light.description == "#FF0000")
        #expect(darkMode.dark.description == "#00FF00")
    }
}
