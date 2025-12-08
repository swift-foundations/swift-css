//
//  _HTML.swift
//  swift-css-rendering
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSS_Standard
import HTML_Renderable

/// Extension to convert W3C CSS Media to HTML.AtRule.Media
extension HTML.AtRule.Media {
    package init(_ media: W3C_CSS_MediaQueries.Media) {
        self = .init(rawValue: media.rawValue)
    }
}

/// Convenience extensions for CSS-typed inline styling.
/// These wrap the base HTML.View.inlineStyle methods with W3C_CSS_MediaQueries.Media conversion.
extension HTML.View {
    /// Applies a typed CSS property using W3C_CSS_MediaQueries.Media.
    @discardableResult
    public func inlineStyle<P: W3C_CSS_Shared.Property>(
        _ property: P?,
        media: W3C_CSS_MediaQueries.Media? = nil,
        selector: HTML.Selector? = nil,
        pseudo: HTML.Pseudo? = nil
    ) -> HTML.Styled<Self, P> {
        self.inlineStyle(
            property,
            atRule: media.map { HTML.AtRule.Media($0) },
            selector: selector,
            pseudo: pseudo
        )
    }
}

extension HTML.View {
    /// Applies a global CSS value (inherit, initial, unset, etc.) to a specific property.
    ///
    /// Note: Global values require a special Property type that wraps the global.
    /// This is a convenience method that creates a GlobalProperty wrapper.
    @discardableResult
    public func inlineStyle<PropertyType: W3C_CSS_Shared.Property>(
        _: PropertyType.Type,
        _ global: W3C_CSS_Shared.Global,
        media: W3C_CSS_MediaQueries.Media? = nil,
        selector: HTML.Selector? = nil,
        pseudo: HTML.Pseudo? = nil
    ) -> HTML.Styled<Self, GlobalProperty<PropertyType>> {
        let wrapper = GlobalProperty<PropertyType>(global)
        return self.inlineStyle(
            wrapper,
            atRule: media.map { HTML.AtRule.Media($0) },
            selector: selector,
            pseudo: pseudo
        )
    }
}
