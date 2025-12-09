//
//  PaintOrder.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSS_Standard
import HTML_Renderable

extension CSS {
    @discardableResult
    @_disfavoredOverload
    public func paintOrder(
        _ paintOrder: W3C_CSS_Images.PaintOrder?
    ) -> CSS<HTML.Styled<Base, W3C_CSS_Images.PaintOrder>> {
        styled(paintOrder)
    }
}
