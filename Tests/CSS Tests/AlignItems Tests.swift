//
//  AlignItems Tests.swift
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
        "AlignItems Tests",
    )
    struct AlignItemsTests {
        @Test("HTML element renders with align-items properly")
        func htmlElementWithAlignItemsRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.alignItems(.center)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .align-items-0{align-items:center}
                    </style>
                  </head>
                  <body>
                    <div class="align-items-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML element renders with align-items flex-start value")
        func htmlElementWithAlignItemsFlexStartRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.alignItems(.flexStart)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .align-items-0{align-items:flex-start}
                    </style>
                  </head>
                  <body>
                    <div class="align-items-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML align-items with global value renders properly")
        func htmlAlignItemsWithGlobalValueRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.alignItems(.inherit)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .align-items-0{align-items:inherit}
                    </style>
                  </head>
                  <body>
                    <div class="align-items-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML align-items with media query renders properly")
        func htmlAlignItemsWithMediaQueryRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.alignItems(.center, media: .print)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      @media print{
                        .align-items-0{align-items:center}
                      }
                    </style>
                  </head>
                  <body>
                    <div class="align-items-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML align-items with pseudo-class renders properly")
        func htmlAlignItemsWithPseudoClassRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.alignItems(.baseline, pseudo: .hover)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .align-items-0:hover{align-items:baseline}
                    </style>
                  </head>
                  <body>
                    <div class="align-items-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML align-items with prefix renders properly")
        func htmlAlignItemsWithPrefixRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.alignItems(.flexEnd, selector: "my-component")
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      my-component .align-items-0{align-items:flex-end}
                    </style>
                  </head>
                  <body>
                    <div class="align-items-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML align-items with stretch value renders properly")
        func htmlAlignItemsWithStretchValueRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.alignItems(.stretch)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .align-items-0{align-items:stretch}
                    </style>
                  </head>
                  <body>
                    <div class="align-items-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
    }
}
