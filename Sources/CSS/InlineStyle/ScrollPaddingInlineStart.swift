//
//  ScrollPaddingInlineStart.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSS_Standard
import HTML_Renderable

extension CSS {
    @discardableResult
    public func scrollPaddingInlineStart(
        _ scrollPaddingInlineStart: W3C_CSS_Scroll.ScrollPaddingInlineStart?,
        media: W3C_CSS_MediaQueries.Media? = nil,
        selector: HTML.Selector? = nil,
        pseudo: HTML.Pseudo? = nil
    ) -> CSS<some HTML.View> {
        CSS<HTML.Styled<Base>>(base: base.inlineStyle(scrollPaddingInlineStart, media: media, selector: selector, pseudo: pseudo))
    }
}
