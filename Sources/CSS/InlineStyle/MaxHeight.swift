//
//  MaxHeight.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSS_Standard
import HTML_Renderable

extension CSS {
    @discardableResult
    public func maxHeight(
        _ maxHeight: W3C_CSS_BoxModel.MaxHeight?,
        media: W3C_CSS_MediaQueries.Media? = nil,
        selector: HTML.Selector? = nil,
        pseudo: HTML.Pseudo? = nil
    ) -> CSS<some HTML.View> {
        CSS<HTML.InlineStyle<Base, W3C_CSS_BoxModel.MaxHeight>>(base: base.inlineStyle(maxHeight, media: media, selector: selector, pseudo: pseudo))
    }
}
