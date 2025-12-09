//
//  HyphenateCharacter.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSS_Standard
import HTML_Renderable

extension CSS {
    @discardableResult
    @_disfavoredOverload
    public func hyphenateCharacter(
        _ hyphenateCharacter: W3C_CSS_Text.HyphenateCharacter?
    ) -> CSS<HTML.Styled<Base, W3C_CSS_Text.HyphenateCharacter>> {
        styled(hyphenateCharacter)
    }
}
