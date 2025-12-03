//
//  BoxShadow.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSS_Standard
import HTML_Renderable

extension CSS {
    @discardableResult
    public func boxShadow(
        _ boxShadow: W3C_CSS_Backgrounds.BoxShadow?,
        media: W3C_CSS_MediaQueries.Media? = nil,
        selector: HTML.Selector? = nil,
        pseudo: HTML.Pseudo? = nil
    ) -> CSS<some HTML.View> {
        CSS<HTML.InlineStyle<Base, W3C_CSS_Backgrounds.BoxShadow>>(base: base.inlineStyle(boxShadow, media: media, selector: selector, pseudo: pseudo))
    }
}
