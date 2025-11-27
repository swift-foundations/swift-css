//
//  BackfaceVisibility Tests.swift
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
        "BackfaceVisibility Tests",
    )
    struct BackfaceVisibilityTests {
        @Test("HTML element renders with backface-visibility hidden properly")
        func htmlElementWithBackfaceVisibilityHiddenRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.backfaceVisibility(.hidden)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .backface-visibility-0{backface-visibility:hidden}
                    </style>
                  </head>
                  <body>
                    <div class="backface-visibility-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML element renders with backface-visibility visible properly")
        func htmlElementWithBackfaceVisibilityVisibleRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.backfaceVisibility(.visible)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .backface-visibility-0{backface-visibility:visible}
                    </style>
                  </head>
                  <body>
                    <div class="backface-visibility-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML backface-visibility with global value renders properly")
        func htmlBackfaceVisibilityWithGlobalValueRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.backfaceVisibility(.inherit)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .backface-visibility-0{backface-visibility:inherit}
                    </style>
                  </head>
                  <body>
                    <div class="backface-visibility-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML backface-visibility with media query renders properly")
        func htmlBackfaceVisibilityWithMediaQueryRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.backfaceVisibility(.hidden, media: .print)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      @media print{
                        .backface-visibility-0{backface-visibility:hidden}
                      }
                    </style>
                  </head>
                  <body>
                    <div class="backface-visibility-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML backface-visibility with pseudo-class renders properly")
        func htmlBackfaceVisibilityWithPseudoClassRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.backfaceVisibility(.hidden, pseudo: .hover)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .backface-visibility-0:hover{backface-visibility:hidden}
                    </style>
                  </head>
                  <body>
                    <div class="backface-visibility-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML backface-visibility with prefix renders properly")
        func htmlBackfaceVisibilityWithPrefixRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.backfaceVisibility(.hidden, selector: "my-component")
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      my-component .backface-visibility-0{backface-visibility:hidden}
                    </style>
                  </head>
                  <body>
                    <div class="backface-visibility-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
    }
}
