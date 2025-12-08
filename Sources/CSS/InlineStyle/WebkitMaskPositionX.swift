//
//  WebkitMaskPositionX.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSS_Standard
import HTML_Renderable

extension CSS {
    @discardableResult
    public func webkitMaskPositionX(
        _ webkitMaskPositionX: W3C_CSS_UI.WebkitMaskPositionX?,
        media: W3C_CSS_MediaQueries.Media? = nil,
        selector: HTML.Selector? = nil,
        pseudo: HTML.Pseudo? = nil
    ) -> CSS<some HTML.View> {
        CSS<HTML.Styled<Base>>(base: base.inlineStyle(webkitMaskPositionX, media: media, selector: selector, pseudo: pseudo))
    }
}
