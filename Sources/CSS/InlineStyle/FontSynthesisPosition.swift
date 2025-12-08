//
//  FontSynthesisPosition.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSS_Standard
import HTML_Renderable

extension CSS {
    @discardableResult
    public func fontSynthesisPosition(
        _ fontSynthesisPosition: W3C_CSS_Fonts.FontSynthesisPosition?,
        media: W3C_CSS_MediaQueries.Media? = nil,
        selector: HTML.Selector? = nil,
        pseudo: HTML.Pseudo? = nil
    ) -> CSS<some HTML.View> {
        CSS<HTML.Styled<Base>>(base: base.inlineStyle(fontSynthesisPosition, media: media, selector: selector, pseudo: pseudo))
    }
}
