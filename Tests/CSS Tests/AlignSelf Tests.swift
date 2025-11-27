//
//  AlignSelf Tests.swift
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
        "AlignSelf Tests",
    )
    struct AlignSelfTests {
        @Test("HTML element renders with align-self properly")
        func htmlElementWithAlignSelfRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.alignSelf(.center)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .align-self-0{align-self:center}
                    </style>
                  </head>
                  <body>
                    <div class="align-self-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML element renders with align-self auto value")
        func htmlElementWithAlignSelfAutoRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.alignSelf(.auto)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .align-self-0{align-self:auto}
                    </style>
                  </head>
                  <body>
                    <div class="align-self-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML align-self with global value renders properly")
        func htmlAlignSelfWithGlobalValueRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.alignSelf(.inherit)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .align-self-0{align-self:inherit}
                    </style>
                  </head>
                  <body>
                    <div class="align-self-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML align-self with media query renders properly")
        func htmlAlignSelfWithMediaQueryRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.alignSelf(.center, media: .print)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      @media print{
                        .align-self-0{align-self:center}
                      }
                    </style>
                  </head>
                  <body>
                    <div class="align-self-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML align-self with pseudo-class renders properly")
        func htmlAlignSelfWithPseudoClassRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.alignSelf(.baseline, pseudo: .hover)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .align-self-0:hover{align-self:baseline}
                    </style>
                  </head>
                  <body>
                    <div class="align-self-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML align-self with prefix renders properly")
        func htmlAlignSelfWithPrefixRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.alignSelf(.flexEnd, selector: "my-component")
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      my-component .align-self-0{align-self:flex-end}
                    </style>
                  </head>
                  <body>
                    <div class="align-self-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML align-self with stretch value renders properly")
        func htmlAlignSelfWithStretchValueRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.alignSelf(.stretch)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .align-self-0{align-self:stretch}
                    </style>
                  </head>
                  <body>
                    <div class="align-self-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
    }
}
