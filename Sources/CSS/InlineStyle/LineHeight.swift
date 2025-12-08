//
//  LineHeight.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSS_Standard
import HTML_Renderable

extension CSS {
    @discardableResult
    public func lineHeight(
        _ lineHeight: W3C_CSS_Text.LineHeight?,
        media: W3C_CSS_MediaQueries.Media? = nil,
        selector: HTML.Selector? = nil,
        pseudo: HTML.Pseudo? = nil
    ) -> CSS<some HTML.View> {
        CSS<HTML.Styled<Base>>(base: base.inlineStyle(lineHeight, media: media, selector: selector, pseudo: pseudo))
    }
}

extension CSS {
    @discardableResult
    public func lineHeight<T: BinaryInteger>(
        _ lineHeight: T?,
        media: W3C_CSS_MediaQueries.Media? = nil,
        selector: HTML.Selector? = nil,
        pseudo: HTML.Pseudo? = nil
    ) -> CSS<some HTML.View> {
        CSS<HTML.Styled<Base>>(base: base.inlineStyle(
            lineHeight.map { LineHeight(integerLiteral: Int($0)) },
            media: media,
            selector: selector,
            pseudo: pseudo
        ))
    }

    @discardableResult
    public func lineHeight<T: BinaryFloatingPoint>(
        _ lineHeight: T?,
        media: W3C_CSS_MediaQueries.Media? = nil,
        selector: HTML.Selector? = nil,
        pseudo: HTML.Pseudo? = nil
    ) -> CSS<some HTML.View> {
        CSS<HTML.Styled<Base>>(base: base.inlineStyle(
            lineHeight.map { LineHeight(floatLiteral: Double($0)) },
            media: media,
            selector: selector,
            pseudo: pseudo
        ))
    }
}
