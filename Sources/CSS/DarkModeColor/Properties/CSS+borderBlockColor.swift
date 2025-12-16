//
//  CSS+borderBlockColor.swift
//  swift-css
//
//  CSS border-block-color property with dark mode support.
//

public import CSS_HTML_Rendering
public import CSS_Standard
public import HTML_Renderable

extension CSS {
    /// Sets the border block color using a DarkModeColor value.
    @discardableResult
    public func borderBlockColor(
        _ darkModeColor: DarkModeColor
    ) -> CSS<some HTML.View> {
        self.borderBlockColor(CSS_Standard.BorderBlockColor.color(darkModeColor.light))
            .dark { $0.borderBlockColor(CSS_Standard.BorderBlockColor.color(darkModeColor.dark)) }
    }

    /// Sets the border block color using separate light and dark color values.
    @discardableResult
    public func borderBlockColor(
        light: CSS_Standard.Color.Value,
        dark: CSS_Standard.Color.Value
    ) -> CSS<some HTML.View> {
        borderBlockColor(DarkModeColor(light: light, dark: dark))
    }
}
