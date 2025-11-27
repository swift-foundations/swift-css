//
//  AnchorName Tests.swift
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
        "AnchorName Tests",
    )
    struct AnchorNameTests {
        @Test("HTML element renders with anchor-name string value properly")
        func htmlElementWithAnchorNameStringRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.anchorName("section-header")
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .anchor-name-0{anchor-name:--section-header}
                    </style>
                  </head>
                  <body>
                    <div class="anchor-name-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML element renders with anchor-name none value")
        func htmlElementWithAnchorNameNoneRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.anchorName(AnchorName.none)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .anchor-name-0{anchor-name:none}
                    </style>
                  </head>
                  <body>
                    <div class="anchor-name-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML anchor-name with global value renders properly")
        func htmlAnchorNameWithGlobalValueRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.anchorName(.inherit)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .anchor-name-0{anchor-name:inherit}
                    </style>
                  </head>
                  <body>
                    <div class="anchor-name-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML anchor-name with media query renders properly")
        func htmlAnchorNameWithMediaQueryRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.anchorName("section-intro", media: .print)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      @media print{
                        .anchor-name-0{anchor-name:--section-intro}
                      }
                    </style>
                  </head>
                  <body>
                    <div class="anchor-name-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML anchor-name with pseudo-class renders properly")
        func htmlAnchorNameWithPseudoClassRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.anchorName("heading", pseudo: .hover)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .anchor-name-0:hover{anchor-name:--heading}
                    </style>
                  </head>
                  <body>
                    <div class="anchor-name-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML anchor-name with prefix renders properly")
        func htmlAnchorNameWithPrefixRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.anchorName("footer", selector: "my-component")
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      my-component .anchor-name-0{anchor-name:--footer}
                    </style>
                  </head>
                  <body>
                    <div class="anchor-name-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
    }
}
