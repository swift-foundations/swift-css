//
//  CSS+caretColor.swift
//  swift-css
//
//  CSS caret-color property with dark mode support.
//

public import CSS_HTML_Rendering
public import CSS_Standard
public import HTML_Renderable

extension CSS {
    /// Sets the caret color using a DarkModeColor value.
    @discardableResult
    @CSS.Builder
    public func caretColor(
        _ darkModeColor: DarkModeColor
    ) -> CSS<some HTML.View> {
        if darkModeColor.isSingleColor {
            self.caretColor(CSS_Standard.CaretColor.color(darkModeColor.light))
        } else {
            self.caretColor(CSS_Standard.CaretColor.color(darkModeColor.light))
                .dark { $0.caretColor(CSS_Standard.CaretColor.color(darkModeColor.dark)) }
        }
    }

    /// Sets the caret color using separate light and dark color values.
    @discardableResult
    public func caretColor(
        light: CSS_Standard.Color.Value,
        dark: CSS_Standard.Color.Value
    ) -> CSS<some HTML.View> {
        caretColor(DarkModeColor(light: light, dark: dark))
    }
}
