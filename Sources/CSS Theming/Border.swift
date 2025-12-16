//
//  Border.swift
//  swift-css
//
//  Border type definition with side configuration.
//

public import CSS_HTML_Rendering
public import CSS_Standard

public struct Border: Equatable, Sendable {
    public var sides: Set<Side>?
    public var width: BorderWidth?
    public var style: CSS_Standard.LineStyle?
    public var color: DarkModeColor?

    public enum Side: String, Sendable, CaseIterable {
        case top, left, right, bottom

        public static let all: [Self] = allCases
    }

    public init(
        sides: Set<Side>? = nil,
        width: BorderWidth? = nil,
        style: CSS_Standard.LineStyle? = .solid,
        color: DarkModeColor? = nil
    ) {
        self.width = width
        self.style = style
        self.color = color
        self.sides = sides
    }
}
