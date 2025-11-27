//
//  TextCombineUpright.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSS_Standard
import HTML_Renderable

extension CSS {
    @discardableResult
    public func textCombineUpright(
        _ textCombineUpright: W3C_CSS_Text.TextCombineUpright?,
        media: W3C_CSS_MediaQueries.Media? = nil,
        selector: HTML.Selector? = nil,
        pseudo: HTML.Pseudo? = nil
    ) -> CSS<HTML.AnyView> {
        CSS<HTML.AnyView>(base: HTML.AnyView(base.inlineStyle(textCombineUpright, media: media, selector: selector, pseudo: pseudo)))
    }
}
