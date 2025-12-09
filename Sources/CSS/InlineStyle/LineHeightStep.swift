//
//  LineHeightStep.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSS_Standard
import HTML_Renderable

extension CSS {
    @discardableResult
    @_disfavoredOverload
    public func lineHeightStep(
        _ lineHeightStep: W3C_CSS_Text.LineHeightStep?,
        media: W3C_CSS_MediaQueries.Media? = nil,
        selector: HTML.Selector? = nil,
        pseudo: HTML.Pseudo? = nil
    ) -> CSS<HTML.Styled<Base, W3C_CSS_Text.LineHeightStep>> {
        styled(lineHeightStep, media: media, selector: selector, pseudo: pseudo)
    }
}
