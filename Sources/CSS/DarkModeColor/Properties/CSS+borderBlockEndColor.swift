//
//  CSS+borderBlockEndColor.swift
//  swift-css
//
//  CSS border-block-end-color property with dark mode support.
//

public import CSS_HTML_Rendering
public import CSS_Standard
public import HTML_Renderable

extension CSS {
    /// Sets the border block end color using a DarkModeColor value.
    @discardableResult
    public func borderBlockEndColor(
        _ darkModeColor: DarkModeColor
    ) -> CSS<some HTML.View> {
        self.borderBlockEndColor(CSS_Standard.BorderBlockEndColor.color(darkModeColor.light))
            .dark { $0.borderBlockEndColor(CSS_Standard.BorderBlockEndColor.color(darkModeColor.dark)) }
    }

    /// Sets the border block end color using separate light and dark color values.
    @discardableResult
    public func borderBlockEndColor(
        light: CSS_Standard.Color.Value,
        dark: CSS_Standard.Color.Value
    ) -> CSS<some HTML.View> {
        borderBlockEndColor(DarkModeColor(light: light, dark: dark))
    }
}
