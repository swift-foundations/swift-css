//
//  VerticalAlign.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSS_Standard
import HTML_Renderable

extension CSS {
    @discardableResult
    public func verticalAlign(
        _ verticalAlign: W3C_CSS_Alignment.VerticalAlign?,
        media: W3C_CSS_MediaQueries.Media? = nil,
        selector: HTML.Selector? = nil,
        pseudo: HTML.Pseudo? = nil
    ) -> CSS<some HTML.View> {
        CSS<HTML.InlineStyle<Base, W3C_CSS_Alignment.VerticalAlign>>(base: base.inlineStyle(verticalAlign, media: media, selector: selector, pseudo: pseudo))
    }
}
