//
//  InsetInlineStart.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSS_Standard
import HTML_Renderable

extension CSS {
    @discardableResult
    public func insetInlineStart(
        _ insetInlineStart: W3C_CSS_Positioning.InsetInlineStart?,
        media: W3C_CSS_MediaQueries.Media? = nil,
        selector: HTML.Selector? = nil,
        pseudo: HTML.Pseudo? = nil
    ) -> CSS<some HTML.View> {
        CSS<HTML.InlineStyle<Base, W3C_CSS_Positioning.InsetInlineStart>>(base: base.inlineStyle(insetInlineStart, media: media, selector: selector, pseudo: pseudo))
    }
}
