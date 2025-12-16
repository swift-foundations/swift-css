//
//  CSS+textDecorationColor.swift
//  swift-css
//
//  CSS text-decoration-color property with dark mode support.
//

public import CSS_HTML_Rendering
public import CSS_Standard
public import HTML_Renderable

extension CSS {
    /// Sets the text decoration color using a DarkModeColor value.
    @discardableResult
    public func textDecorationColor(
        _ darkModeColor: DarkModeColor
    ) -> CSS<some HTML.View> {
        self.textDecorationColor(CSS_Standard.TextDecorationColor.color(darkModeColor.light))
            .dark { $0.textDecorationColor(CSS_Standard.TextDecorationColor.color(darkModeColor.dark)) }
    }

    /// Sets the text decoration color using separate light and dark color values.
    @discardableResult
    public func textDecorationColor(
        light: CSS_Standard.Color.Value,
        dark: CSS_Standard.Color.Value
    ) -> CSS<some HTML.View> {
        textDecorationColor(DarkModeColor(light: light, dark: dark))
    }
}
