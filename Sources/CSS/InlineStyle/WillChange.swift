//
//  WillChange.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSS_Standard
import HTML_Renderable

extension CSS {
    @discardableResult
    @_disfavoredOverload
    public func willChange(
        _ willChange: W3C_CSS_Visual.WillChange?,
        media: W3C_CSS_MediaQueries.Media? = nil,
        selector: HTML.Selector? = nil,
        pseudo: HTML.Pseudo? = nil
    ) -> CSS<HTML.Styled<Base, W3C_CSS_Visual.WillChange>> {
        styled(willChange, media: media, selector: selector, pseudo: pseudo)
    }
}
