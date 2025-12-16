//
//  CSS+DarkModeColor.swift
//  swift-css
//
//  Provides CSS methods that accept DarkModeColor for light/dark mode support.
//

public import CSS_HTML_Rendering
public import CSS_Standard
public import HTML_Renderable
public import W3C_CSS_Values

extension CSS {
    /// Sets the text color using a DarkModeColor value.
    ///
    /// This method applies the light color by default and adds a dark mode
    /// media query for the dark color variant.
    ///
    /// ```swift
    /// div.css.color(DarkModeColor(light: .black, dark: .white))
    /// ```
    @discardableResult
    public func color(
        _ darkModeColor: DarkModeColor
    ) -> CSS<some HTML.View> {
        self.color(W3C_CSS_Color.Color.color(darkModeColor.light))
            .dark { $0.color(W3C_CSS_Color.Color.color(darkModeColor.dark)) }
    }

    /// Sets the text color using separate light and dark color values.
    ///
    /// ```swift
    /// div.css.color(light: .black, dark: .white)
    /// ```
    @discardableResult
    public func color(
        light: CSS_Standard.Color.Value,
        dark: CSS_Standard.Color.Value
    ) -> CSS<some HTML.View> {
        color(DarkModeColor(light: light, dark: dark))
    }

    /// Sets the background color using a DarkModeColor value.
    ///
    /// This method applies the light color by default and adds a dark mode
    /// media query for the dark color variant.
    ///
    /// ```swift
    /// div.css.backgroundColor(DarkModeColor(light: .white, dark: .black))
    /// ```
    @discardableResult
    public func backgroundColor(
        _ darkModeColor: DarkModeColor
    ) -> CSS<some HTML.View> {
        self.backgroundColor(W3C_CSS_Backgrounds.BackgroundColor.color(darkModeColor.light))
            .dark { $0.backgroundColor(W3C_CSS_Backgrounds.BackgroundColor.color(darkModeColor.dark)) }
    }

    /// Sets the background color using separate light and dark color values.
    ///
    /// ```swift
    /// div.css.backgroundColor(light: .white, dark: .black)
    /// ```
    @discardableResult
    public func backgroundColor(
        light: CSS_Standard.Color.Value,
        dark: CSS_Standard.Color.Value
    ) -> CSS<some HTML.View> {
        backgroundColor(DarkModeColor(light: light, dark: dark))
    }

    /// Sets the border using a DarkModeColor value for the border color.
    ///
    /// ```swift
    /// div.css.border(width: .px(1), style: .solid, color: DarkModeColor(light: .gray, dark: .darkGray))
    /// ```
    @discardableResult
    public func border(
        width: W3C_CSS_Backgrounds.BorderWidth,
        style: W3C_CSS_Values.LineStyle,
        color: DarkModeColor
    ) -> CSS<some HTML.View> {
        self.border(W3C_CSS_Backgrounds.Border(width: width, style: style, color: color.light))
            .dark { $0.border(W3C_CSS_Backgrounds.Border(width: width, style: style, color: color.dark)) }
    }
}
