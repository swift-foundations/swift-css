//
//  TextSpacingTrim.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSS_Standard
import HTML_Renderable

extension CSS {
    @discardableResult
    public func textSpacingTrim(
        _ textSpacingTrim: W3C_CSS_Text.TextSpacingTrim?,
        media: W3C_CSS_MediaQueries.Media? = nil,
        selector: HTML.Selector? = nil,
        pseudo: HTML.Pseudo? = nil
    ) -> CSS<HTML.Styled<Base, W3C_CSS_Text.TextSpacingTrim>> {
        styled(textSpacingTrim, media: media, selector: selector, pseudo: pseudo)
    }
}
