//
//  Transform.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSS_Standard
import HTML_Renderable

extension CSS {
    @discardableResult
    public func transform(
        _ transform: W3C_CSS_Transforms.Transform?,
        media: W3C_CSS_MediaQueries.Media? = nil,
        selector: HTML.Selector? = nil,
        pseudo: HTML.Pseudo? = nil
    ) -> CSS<HTML.AnyView> {
        CSS<HTML.AnyView>(base: HTML.AnyView(base.inlineStyle(transform, media: media, selector: selector, pseudo: pseudo)))
    }
}

extension CSS {
    @discardableResult
    public func transform(
        _ transform: String,
        media: W3C_CSS_MediaQueries.Media? = nil,
        selector: HTML.Selector? = nil,
        pseudo: HTML.Pseudo? = nil
    ) -> CSS<HTML.AnyView> {
        CSS<HTML.AnyView>(base: HTML.AnyView(base.inlineStyle(
            Transform.property,
            transform,
            media: media,
            selector: selector,
            pseudo: pseudo
        )))
    }
}
