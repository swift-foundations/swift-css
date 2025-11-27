//
//  _HTML.swift
//  swift-css-rendering
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSS_Standard
import HTML_Renderable

extension HTML.View {
    @discardableResult
    public func inlineStyle<PropertyElement: W3C_CSS_Shared.Property>(
        _ property: PropertyElement?,
        media: W3C_CSS_MediaQueries.Media? = nil,
        selector: HTML.Selector? = nil,
        pseudo: HTML.Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(
            PropertyElement.property,
            property?.description,
            media: media.map { HTML.AtRule.Media($0) },
            selector: selector,
            pseudo: pseudo
        )
    }
}

extension HTML.View {
    @discardableResult
    @_disfavoredOverload
    public func inlineStyle(
        _ property: String,
        _ value: String?,
        media: W3C_CSS_MediaQueries.Media? = nil,
        selector: HTML.Selector? = nil,
        pseudo: HTML.Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(
            property,
            value,
            media: media.map { HTML.AtRule.Media($0) },
            selector: selector,
            pseudo: pseudo
        )
    }
}

extension HTML.View {
    /// Applies a global CSS value (inherit, initial, unset, etc.) to a specific property.
    @discardableResult
    public func inlineStyle<PropertyType: W3C_CSS_Shared.Property>(
        _: PropertyType.Type,
        _ global: W3C_CSS_Shared.Global,
        media: W3C_CSS_MediaQueries.Media? = nil,
        selector: HTML.Selector? = nil,
        pseudo: HTML.Pseudo? = nil
    ) -> HTMLInlineStyle<Self> {
        self.inlineStyle(
            PropertyType.property,
            global.description,
            media: media.map { HTML.AtRule.Media($0) },
            selector: selector,
            pseudo: pseudo
        )
    }
}

extension HTML.AtRule.Media {
    package init(_ media: W3C_CSS_MediaQueries.Media) {
        self = .init(rawValue: media.rawValue)
    }
}
