//
//  BreakInside.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSS_Standard
import HTML_Renderable

extension CSS {
    @discardableResult
    @_disfavoredOverload
    public func breakInside(
        _ breakInside: W3C_CSS_Multicolumn.BreakInside?,
        media: W3C_CSS_MediaQueries.Media? = nil,
        selector: HTML.Selector? = nil,
        pseudo: HTML.Pseudo? = nil
    ) -> CSS<HTML.Styled<Base, W3C_CSS_Multicolumn.BreakInside>> {
        styled(breakInside, media: media, selector: selector, pseudo: pseudo)
    }
}
