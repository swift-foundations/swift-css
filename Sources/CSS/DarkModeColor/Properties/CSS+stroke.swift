//
//  CSS+stroke.swift
//  swift-css
//
//  CSS stroke property (SVG) with dark mode support.
//

public import CSS_HTML_Rendering
public import CSS_Standard
public import HTML_Renderable

extension CSS {
    /// Sets the SVG stroke color using a DarkModeColor value.
    @discardableResult
    public func stroke(
        _ darkModeColor: DarkModeColor
    ) -> CSS<some HTML.View> {
        self.stroke(CSS_Standard.Stroke.color(darkModeColor.light))
            .dark { $0.stroke(CSS_Standard.Stroke.color(darkModeColor.dark)) }
    }

    /// Sets the SVG stroke color using separate light and dark color values.
    @discardableResult
    public func stroke(
        light: CSS_Standard.Color.Value,
        dark: CSS_Standard.Color.Value
    ) -> CSS<some HTML.View> {
        stroke(DarkModeColor(light: light, dark: dark))
    }
}
