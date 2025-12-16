//
//  CSS+text.swift
//  swift-css
//
//  Convenience method for common text styling properties.
//

public import CSS_HTML_Rendering
public import CSS_Standard
public import HTML_Renderable

extension CSS {
    /// Convenience method for common text styling properties.
    ///
    /// ```swift
    /// p.css.text(
    ///     align: .center,
    ///     decoration: .underline,
    ///     transform: .uppercase
    /// )
    /// ```
    @inlinable
    @discardableResult
    @CSS.Builder
    public func text(
        align: TextAlign? = nil,
        decoration: TextDecoration? = nil,
        transform: TextTransform? = nil,
        overflow: TextOverflow? = nil
    ) -> CSS<some HTML.View> {
        base
            .inlineStyle(align)
            .inlineStyle(decoration)
            .inlineStyle(transform)
            .inlineStyle(overflow)
    }
}
