//
//  GridAutoFlow.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSS_Standard
import HTML_Renderable

extension CSS {
    @discardableResult
    public func gridAutoFlow(
        _ gridAutoFlow: W3C_CSS_Grid.GridAutoFlow?,
        media: W3C_CSS_MediaQueries.Media? = nil,
        selector: HTML.Selector? = nil,
        pseudo: HTML.Pseudo? = nil
    ) -> CSS<some HTML.View> {
        CSS<HTML.InlineStyle<Base, W3C_CSS_Grid.GridAutoFlow>>(base: base.inlineStyle(gridAutoFlow, media: media, selector: selector, pseudo: pseudo))
    }
}
