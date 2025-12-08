//
//  GridTemplateRows.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSS_Standard
import HTML_Renderable

extension CSS {
    @discardableResult
    public func gridTemplateRows(
        _ gridTemplateRows: W3C_CSS_Grid.GridTemplateRows?,
        media: W3C_CSS_MediaQueries.Media? = nil,
        selector: HTML.Selector? = nil,
        pseudo: HTML.Pseudo? = nil
    ) -> CSS<HTML.Styled<Base, W3C_CSS_Grid.GridTemplateRows>> {
        styled(gridTemplateRows, media: media, selector: selector, pseudo: pseudo)
    }
}
