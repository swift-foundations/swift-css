//
//  AlignmentBaseline Tests.swift
//  swift-html
//
//  Created by Claude AI on 11/04/2025.
//

import CSS
import CSS_Standard
import HTML_Renderable
import HTML_Rendering_TestSupport
import Testing

extension `Snapshot Tests` {
    @Suite
    struct `AlignmentBaseline Tests` {
        @Test
        func `HTML element renders with alignment-baseline properly`() throws {
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

        @Test
        func `HTML element renders with alignment-baseline text-bottom value`() throws {
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

        @Test
        func `HTML alignment-baseline with global value renders properly`() throws {
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

        @Test
        func `HTML alignment-baseline with media query renders properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.print { $0.alignmentBaseline(.middle) }
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

        @Test
        func `HTML alignment-baseline with pseudo-class renders properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.hover { $0.alignmentBaseline(.central) }
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

        @Test
        func `HTML alignment-baseline with prefix renders properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.selector("my-component") { $0.alignmentBaseline(.textTop) }
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

        @Test
        func `HTML alignment-baseline with after-edge value renders properly`() throws {
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
