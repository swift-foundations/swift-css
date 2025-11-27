//
//  AlignContent Tests.swift
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
        "AlignContent Tests",
    )
    struct AlignContentTests {
        @Test("HTML element renders with align-content properly")
        func htmlElementWithAlignContentRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.alignContent(.center)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .align-content-0{align-content:center}
                    </style>
                  </head>
                  <body>
                    <div class="align-content-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML element renders with align-content flex-start value")
        func htmlElementWithAlignContentFlexStartRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.alignContent(.flexStart)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .align-content-0{align-content:flex-start}
                    </style>
                  </head>
                  <body>
                    <div class="align-content-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML align-content with global value renders properly")
        func htmlAlignContentWithGlobalValueRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.alignContent(.inherit)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .align-content-0{align-content:inherit}
                    </style>
                  </head>
                  <body>
                    <div class="align-content-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML align-content with media query renders properly")
        func htmlAlignContentWithMediaQueryRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.alignContent(.center, media: .print)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      @media print{
                        .align-content-0{align-content:center}
                      }
                    </style>
                  </head>
                  <body>
                    <div class="align-content-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML align-content with pseudo-class renders properly")
        func htmlAlignContentWithPseudoClassRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.alignContent(.spaceAround, pseudo: .hover)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .align-content-0:hover{align-content:space-around}
                    </style>
                  </head>
                  <body>
                    <div class="align-content-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML align-content with prefix renders properly")
        func htmlAlignContentWithPrefixRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.alignContent(.spaceBetween, selector: "my-component")
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      my-component .align-content-0{align-content:space-between}
                    </style>
                  </head>
                  <body>
                    <div class="align-content-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML align-content with stretch value renders properly")
        func htmlAlignContentWithStretchValueRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.alignContent(.stretch)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .align-content-0{align-content:stretch}
                    </style>
                  </head>
                  <body>
                    <div class="align-content-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
    }
}
