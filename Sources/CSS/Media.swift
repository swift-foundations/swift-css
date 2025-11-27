//
//  Media.swift
//  swift-css-rendering
//
//  Created by Coen ten Thije Boonkkamp on 17/09/2024.
//

import CSS_Standard
import HTML_Renderable

extension HTML.InlineStyle {
    @_disfavoredOverload
    public func inlineStyle(
        _ property: String,
        _ value: String?,
        media: W3C_CSS_MediaQueries.Media? = nil,
        selector: HTML.Selector? = nil,
        pseudo: HTML.Pseudo? = nil
    ) -> HTML.InlineStyle<HTML.InlineStyle<Content>> {
        return self.inlineStyle(
            property,
            value,
            atRule: media.map(\.rawValue).map(HTML.AtRule.Media.init(rawValue:)),
            selector: selector,
            pseudo: pseudo
        )
    }
}
