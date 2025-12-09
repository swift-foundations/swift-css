//
//  Right.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSS_Standard
import HTML_Renderable

extension CSS {
    @discardableResult
    @_disfavoredOverload
    public func right(
        _ right: W3C_CSS_Positioning.Right?
    ) -> CSS<HTML.Styled<Base, W3C_CSS_Positioning.Right>> {
        styled(right)
    }
}
