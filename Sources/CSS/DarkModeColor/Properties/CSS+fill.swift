//
//  CSS+fill.swift
//  swift-css
//
//  CSS fill property (SVG) with dark mode support.
//

public import CSS_HTML_Rendering
public import CSS_Standard
public import HTML_Renderable

extension CSS {
    /// Sets the SVG fill color using a DarkModeColor value.
    @discardableResult
    public func fill(
        _ darkModeColor: DarkModeColor
    ) -> CSS<some HTML.View> {
        self.fill(CSS_Standard.Fill.color(darkModeColor.light))
            .dark { $0.fill(CSS_Standard.Fill.color(darkModeColor.dark)) }
    }

    /// Sets the SVG fill color using separate light and dark color values.
    @discardableResult
    public func fill(
        light: CSS_Standard.Color.Value,
        dark: CSS_Standard.Color.Value
    ) -> CSS<some HTML.View> {
        fill(DarkModeColor(light: light, dark: dark))
    }
}
