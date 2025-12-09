//
//  MaskComposite.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSS_Standard
import HTML_Renderable

extension CSS {
    @discardableResult
    @_disfavoredOverload
    public func maskComposite(
        _ maskComposite: W3C_CSS_Masking.MaskComposite?
    ) -> CSS<HTML.Styled<Base, W3C_CSS_Masking.MaskComposite>> {
        styled(maskComposite)
    }
}
