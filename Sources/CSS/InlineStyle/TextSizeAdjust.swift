//
//  TextSizeAdjust.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSS_Standard
import HTML_Renderable

extension CSS {
    @discardableResult
    public func textSizeAdjust(
        _ textSizeAdjust: W3C_CSS_Text.TextSizeAdjust?,
        media: W3C_CSS_MediaQueries.Media? = nil,
        selector: HTML.Selector? = nil,
        pseudo: HTML.Pseudo? = nil
    ) -> CSS<HTML.AnyView> {
        CSS<HTML.AnyView>(base: HTML.AnyView(base.inlineStyle(textSizeAdjust, media: media, selector: selector, pseudo: pseudo)))
    }
}
