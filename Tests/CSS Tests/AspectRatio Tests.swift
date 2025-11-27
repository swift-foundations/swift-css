//
//  AspectRatio Tests.swift
//  swift-html
//
//  Created by Claude AI on 11/04/2025.
//

import CSS
import CSS_Standard
import CSS_Standard
import HTML_Renderable
import HTML_Renderable_TestSupport
import Testing

extension `Snapshot Tests` {
    @Suite(
        "AspectRatio Tests",
    )
    struct AspectRatioTests {
        @Test("HTML element renders with aspect-ratio properly")
        func htmlElementWithAspectRatioRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.aspectRatio(try! .ratio(16, 9))
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .aspect-ratio-0{aspect-ratio:16 / 9}
                    </style>
                  </head>
                  <body>
                    <div class="aspect-ratio-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML element renders with different aspect-ratio value properly")
        func htmlElementWithDifferentAspectRatioRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.aspectRatio(try! .ratio(4, 3))
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .aspect-ratio-0{aspect-ratio:4 / 3}
                    </style>
                  </head>
                  <body>
                    <div class="aspect-ratio-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML element renders with auto aspect-ratio properly")
        func htmlElementWithAutoAspectRatioRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.aspectRatio(try! .auto)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .aspect-ratio-0{aspect-ratio:auto}
                    </style>
                  </head>
                  <body>
                    <div class="aspect-ratio-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML aspect-ratio with global value renders properly")
        func htmlAspectRatioWithGlobalValueRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.aspectRatio(try! .inherit)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .aspect-ratio-0{aspect-ratio:inherit}
                    </style>
                  </head>
                  <body>
                    <div class="aspect-ratio-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML aspect-ratio with media query renders properly")
        func htmlAspectRatioWithMediaQueryRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.aspectRatio(try! .ratio(16, 9), media: .print)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      @media print{
                        .aspect-ratio-0{aspect-ratio:16 / 9}
                      }
                    </style>
                  </head>
                  <body>
                    <div class="aspect-ratio-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML aspect-ratio with pseudo-class renders properly")
        func htmlAspectRatioWithPseudoClassRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.aspectRatio(try! .ratio(16, 9), pseudo: .hover)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .aspect-ratio-0:hover{aspect-ratio:16 / 9}
                    </style>
                  </head>
                  <body>
                    <div class="aspect-ratio-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML aspect-ratio with prefix renders properly")
        func htmlAspectRatioWithPrefixRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.aspectRatio(try! .ratio(16, 9), selector: "my-component")
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      my-component .aspect-ratio-0{aspect-ratio:16 / 9}
                    </style>
                  </head>
                  <body>
                    <div class="aspect-ratio-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
    }
}
