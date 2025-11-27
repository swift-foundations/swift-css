//
//  AlignmentBaseline Tests.swift
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
        "AlignmentBaseline Tests",
    )
    struct AlignmentBaselineTests {
        @Test("HTML element renders with alignment-baseline properly")
        func htmlElementWithAlignmentBaselineRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.alignmentBaseline(.baseline)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .alignment-baseline-0{alignment-baseline:baseline}
                    </style>
                  </head>
                  <body>
                    <div class="alignment-baseline-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML element renders with alignment-baseline text-bottom value")
        func htmlElementWithAlignmentBaselineTextBottomRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.alignmentBaseline(.textBottom)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .alignment-baseline-0{alignment-baseline:text-bottom}
                    </style>
                  </head>
                  <body>
                    <div class="alignment-baseline-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML alignment-baseline with global value renders properly")
        func htmlAlignmentBaselineWithGlobalValueRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.alignmentBaseline(.inherit)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .alignment-baseline-0{alignment-baseline:inherit}
                    </style>
                  </head>
                  <body>
                    <div class="alignment-baseline-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML alignment-baseline with media query renders properly")
        func htmlAlignmentBaselineWithMediaQueryRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.alignmentBaseline(.middle, media: .print)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      @media print{
                        .alignment-baseline-0{alignment-baseline:middle}
                      }
                    </style>
                  </head>
                  <body>
                    <div class="alignment-baseline-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML alignment-baseline with pseudo-class renders properly")
        func htmlAlignmentBaselineWithPseudoClassRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.alignmentBaseline(.central, pseudo: .hover)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .alignment-baseline-0:hover{alignment-baseline:central}
                    </style>
                  </head>
                  <body>
                    <div class="alignment-baseline-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML alignment-baseline with prefix renders properly")
        func htmlAlignmentBaselineWithPrefixRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.alignmentBaseline(.textTop, selector: "my-component")
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      my-component .alignment-baseline-0{alignment-baseline:text-top}
                    </style>
                  </head>
                  <body>
                    <div class="alignment-baseline-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML alignment-baseline with after-edge value renders properly")
        func htmlAlignmentBaselineWithAfterEdgeValueRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.alignmentBaseline(.afterEdge)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .alignment-baseline-0{alignment-baseline:after-edge}
                    </style>
                  </head>
                  <body>
                    <div class="alignment-baseline-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
    }
}
