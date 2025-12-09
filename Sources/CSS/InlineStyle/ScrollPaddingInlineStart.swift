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
    @_disfavoredOverload
    public func scrollPaddingInlineStart(
        _ scrollPaddingInlineStart: W3C_CSS_Scroll.ScrollPaddingInlineStart?,
        media: W3C_CSS_MediaQueries.Media? = nil,
        selector: HTML.Selector? = nil,
        pseudo: HTML.Pseudo? = nil
    ) -> CSS<HTML.Styled<Base, W3C_CSS_Scroll.ScrollPaddingInlineStart>> {
        styled(scrollPaddingInlineStart, media: media, selector: selector, pseudo: pseudo)
    }
}
