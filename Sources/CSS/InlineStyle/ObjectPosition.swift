//
//  ObjectPosition.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSS_Standard
import HTML_Renderable

extension CSS {
    @discardableResult
    public func objectPosition(
        _ objectPosition: W3C_CSS_Visual.ObjectPosition?,
        media: W3C_CSS_MediaQueries.Media? = nil,
        selector: HTML.Selector? = nil,
        pseudo: HTML.Pseudo? = nil
    ) -> CSS<some HTML.View> {
        CSS<HTML.InlineStyle<Base, W3C_CSS_Visual.ObjectPosition>>(base: base.inlineStyle(objectPosition, media: media, selector: selector, pseudo: pseudo))
    }
}
