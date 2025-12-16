//
//  CSS+borderTopColor.swift
//  swift-css
//
//  CSS border-top-color property with dark mode support.
//

public import CSS_HTML_Rendering
public import CSS_Standard
public import HTML_Renderable

extension CSS {
    /// Sets the border top color using a DarkModeColor value.
    @discardableResult
    @CSS.Builder
    public func borderTopColor(
        _ darkModeColor: DarkModeColor
    ) -> CSS<some HTML.View> {
        if darkModeColor.isSingleColor {
            self.borderTopColor(CSS_Standard.BorderTopColor.color(darkModeColor.light))
        } else {
            self.borderTopColor(CSS_Standard.BorderTopColor.color(darkModeColor.light))
                .dark { $0.borderTopColor(CSS_Standard.BorderTopColor.color(darkModeColor.dark)) }
        }
    }

    /// Sets the border top color using separate light and dark color values.
    @discardableResult
    public func borderTopColor(
        light: CSS_Standard.Color.Value,
        dark: CSS_Standard.Color.Value
    ) -> CSS<some HTML.View> {
        borderTopColor(DarkModeColor(light: light, dark: dark))
    }
}
