//
//  CSS+borderInlineEndColor.swift
//  swift-css
//
//  CSS border-inline-end-color property with dark mode support.
//

public import CSS_HTML_Rendering
public import CSS_Standard
public import HTML_Renderable

extension CSS {
    /// Sets the border inline end color using a DarkModeColor value.
    @discardableResult
    public func borderInlineEndColor(
        _ darkModeColor: DarkModeColor
    ) -> CSS<some HTML.View> {
        self.borderInlineEndColor(CSS_Standard.BorderInlineEndColor.color(darkModeColor.light))
            .dark { $0.borderInlineEndColor(CSS_Standard.BorderInlineEndColor.color(darkModeColor.dark)) }
    }

    /// Sets the border inline end color using separate light and dark color values.
    @discardableResult
    public func borderInlineEndColor(
        light: CSS_Standard.Color.Value,
        dark: CSS_Standard.Color.Value
    ) -> CSS<some HTML.View> {
        borderInlineEndColor(DarkModeColor(light: light, dark: dark))
    }
}
