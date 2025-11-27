//
//  OverflowClipMargin.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSS_Standard
import HTML_Renderable

extension CSS {
    @discardableResult
    public func overflowClipMargin(
        _ overflowClipMargin: W3C_CSS_BoxModel.OverflowClipMargin?,
        media: W3C_CSS_MediaQueries.Media? = nil,
        selector: HTML.Selector? = nil,
        pseudo: HTML.Pseudo? = nil
    ) -> CSS<HTML.AnyView> {
        CSS<HTML.AnyView>(base: HTML.AnyView(base.inlineStyle(overflowClipMargin, media: media, selector: selector, pseudo: pseudo)))
    }
}
