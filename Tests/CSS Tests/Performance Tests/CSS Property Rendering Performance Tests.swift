//
//  CSS Property Rendering Performance Tests.swift
//  swift-html-css-pointfree
//
//  Performance tests for CSS property rendering with String → Bytes conversion overhead.
//  Measures the cost of CustomStringConvertible calls and UTF-8 encoding.
//

import CSS
import CSS_Standard
import HTML_Renderable
import HTML_Renderable_TestSupport
import Testing

extension `Performance Tests` {
    @Suite
    struct `CSS Property Rendering` {

        // MARK: - Simple Color Properties (String → Bytes)

        @Test(.timed(threshold: .seconds(2)))
        func `simple color - rgb rendering 1K times`() {
            for _ in 0..<1_000 {
                _ = try! String(
                    HTML.Document {
                        tag("div")
                            .css.backgroundColor(.rgb(255, 0, 0))
                    }
                )
            }
        }

        @Test(.timed(threshold: .seconds(2)))
        func `simple color - hex rendering 1K times`() {
            for _ in 0..<1_000 {
                _ = try! String(
                    HTML.Document {
                        tag("div")
                            .css.backgroundColor(.hex(.init(0xFF0000)))
                    }
                )
            }
        }

        @Test(.timed(threshold: .seconds(2)))
        func `simple color - named rendering 1K times`() {
            for _ in 0..<1_000 {
                _ = try! String(
                    HTML.Document {
                        tag("div")
                            .css.backgroundColor(.red)
                    }
                )
            }
        }

        // MARK: - Multiple Properties (Accumulated String → Bytes Cost)

        @Test(.timed(threshold: .seconds(2)))
        func `multiple properties - 5 properties 1K times`() {
            for _ in 0..<1_000 {
                _ = try! String(
                    HTML.Document {
                        tag("div")
                            .css.backgroundColor(.rgb(255, 0, 0))
                            .css.width(.px(200))
                            .css.height(.px(100))
                            .css.color(.hex(.init(0x333333)))
                            .css.fontSize(.rem(1.5))
                    }
                )
            }
        }

        @Test(.timed(threshold: .seconds(2)))
        func `multiple properties - 10 properties 500 times`() {
            for _ in 0..<500 {
                _ = try! String(
                    HTML.Document {
                        tag("div")
                            .css.backgroundColor(.rgb(255, 255, 255))
                            .css.width(.px(400))
                            .css.height(.px(300))
                            .css.paddingTop(.px(20))
                            .css.paddingRight(.px(20))
                            .css.paddingBottom(.px(20))
                            .css.paddingLeft(.px(20))
                            .css.marginTop(.px(10))
                            .css.marginBottom(.px(10))
                            .css.color(CSS_Standard.Color.named(.black))
                    }
                )
            }
        }

        // MARK: - Complex CSS Values

        @Test(.timed(threshold: .seconds(2)))
        func `complex values - rgba with alpha 1K times`() {
            for _ in 0..<1_000 {
                _ = try! String(
                    HTML.Document {
                        tag("div")
                            .css.backgroundColor(.rgba(128, 128, 128, 0.5))
                    }
                )
            }
        }

        // MARK: - Many Elements (Batch String → Bytes Conversion)

        @Test(.timed(threshold: .seconds(2)))
        func `many elements - 50 styled divs 50 times`() {
            for _ in 0..<50 {
                _ = try! String(
                    HTML.Document {
                        tag("div") {
                            for i in 0..<50 {
                                tag("div")
                                    .attribute("id", "item-\(i)")
                                    .css.backgroundColor(.rgb(i * 5, 128, 200))
                                    .css.width(.px(Double(100 + i)))
                            }
                        }
                    }
                )
            }
        }

        @Test(.timed(threshold: .seconds(2)))
        func `many elements - heavily styled 100 times`() {
            for _ in 0..<100 {
                _ = try! String(
                    HTML.Document {
                        tag("div") {
                            for i in 0..<20 {
                                tag("div")
                                    .attribute("class", "card-\(i)")
                                    .css.backgroundColor(.hex(.init(UInt32(0xF0F0F0))))
                                    .css.width(.px(300))
                                    .css.height(.px(200))
                                    .css.padding(.px(15))
                                    .css.margin(.px(10))
                            }
                        }
                    }
                )
            }
        }

        // MARK: - Different Property Types

        @Test(.timed(threshold: .seconds(2)))
        func `property types - length properties 1K times`() {
            for _ in 0..<1_000 {
                _ = try! String(
                    HTML.Document {
                        tag("div")
                            .css.width(.px(100))
                            .css.height(.rem(5))
                            .css.minWidth(.percent(50))
                    }
                )
            }
        }

        @Test(.timed(threshold: .seconds(2)))
        func `property types - color properties 1K times`() {
            for _ in 0..<1_000 {
                _ = try! String(
                    HTML.Document {
                        tag("div")
                            .css.backgroundColor(.rgb(200, 100, 50))
                            .css.color(.hex(.init(0x123456)))
                    }
                )
            }
        }

        // MARK: - Real-World Scenarios

        @Test(.timed(threshold: .seconds(2)))
        func `real-world - card component 500 times`() {
            for _ in 0..<500 {
                _ = try! String(
                    HTML.Document {
                        tag("article") {
                            tag("div")
                                .attribute("class", "card-header")
                                .css.backgroundColor(.hex(.init(0x007BFF)))
                                .css.color(CSS_Standard.Color.named(.white))
                                .css.padding(.px(16))

                            tag("div")
                                .attribute("class", "card-body")
                                .css.backgroundColor(.hex(.init(0xFFFFFF)))
                                .css.padding(.px(20))
                                .css.minHeight(.px(200))

                            tag("div")
                                .attribute("class", "card-footer")
                                .css.backgroundColor(.hex(.init(0xF8F9FA)))
                                .css.padding(.px(12))
                        }
                    }
                )
            }
        }

        // MARK: - Baseline (No Styling)

        @Test(.timed(threshold: .seconds(2)))
        func `baseline - unstyled elements 1K times`() {
            for _ in 0..<1_000 {
                _ = try! String(
                    HTML.Document {
                        tag("div") {
                            tag("p") { "Hello World" }
                        }
                    }
                )
            }
        }

        @Test(.timed(threshold: .seconds(2)))
        func `baseline - 50 unstyled divs 50 times`() {
            for _ in 0..<50 {
                _ = try! String(
                    HTML.Document {
                        tag("div") {
                            for i in 0..<50 {
                                tag("div")
                                    .attribute("id", "item-\(i)")
                            }
                        }
                    }
                )
            }
        }
    }
}
