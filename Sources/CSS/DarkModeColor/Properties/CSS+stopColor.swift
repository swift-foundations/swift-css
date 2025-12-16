//
//  CSS+stopColor.swift
//  swift-css
//
//  CSS stop-color property (SVG) with dark mode support.
//

public import CSS_HTML_Rendering
public import CSS_Standard
public import HTML_Renderable

extension CSS {
    /// Sets the SVG stop color using a DarkModeColor value.
    @discardableResult
    public func stopColor(
        _ darkModeColor: DarkModeColor
    ) -> CSS<some HTML.View> {
        self.stopColor(CSS_Standard.StopColor.color(darkModeColor.light))
            .dark { $0.stopColor(CSS_Standard.StopColor.color(darkModeColor.dark)) }
    }

    /// Sets the SVG stop color using separate light and dark color values.
    @discardableResult
    public func stopColor(
        light: CSS_Standard.Color.Value,
        dark: CSS_Standard.Color.Value
    ) -> CSS<some HTML.View> {
        stopColor(DarkModeColor(light: light, dark: dark))
    }
}
