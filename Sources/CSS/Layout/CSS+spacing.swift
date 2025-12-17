//
//  CSS+spacing.swift
//  swift-css
//
//  Convenience method for spacing properties (padding and margin together).
//

public import CSS_HTML_Rendering
public import CSS_Standard
public import HTML_Renderable

extension HTML.CSS {
    /// Convenience method for spacing properties (padding and margin together).
    ///
    /// ```swift
    /// div.css.spacing(
    ///     padding: .px(16),
    ///     margin: .auto
    /// )
    /// ```
    @inlinable
    @discardableResult
    public func spacing(
        padding: Padding? = nil,
        margin: Margin? = nil
    ) -> HTML.CSS<some HTML.View> {
        var result: any HTML.View = base

        if let padding = padding {
            result = HTML.AnyView(result)
                .inlineStyle(padding)
        }
        if let margin = margin {
            result = HTML.AnyView(result)
                .inlineStyle(margin)
        }

        return HTML.CSS<HTML.AnyView>(base: HTML.AnyView(result))
    }
}
