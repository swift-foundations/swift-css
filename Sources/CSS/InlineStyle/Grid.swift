//
//  Grid.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSS_Standard
import HTML_Renderable

extension CSS {
    @discardableResult
    @_disfavoredOverload
    public func grid(
        _ grid: W3C_CSS_Grid.Grid?
    ) -> CSS<HTML.Styled<Base, W3C_CSS_Grid.Grid>> {
        styled(grid)
    }
}
