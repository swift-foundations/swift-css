//
//  AlignItems Tests.swift
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
    struct `AlignItems Tests` {
        @Test
        func `HTML element renders with align-items properly`() throws {
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

        @Test
        func `HTML element renders with align-items flex-start value`() throws {
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

        @Test
        func `HTML align-items with global value renders properly`() throws {
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

        @Test
        func `HTML align-items with media query renders properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.print { $0.alignItems(.center) }
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

        @Test
        func `HTML align-items with pseudo-class renders properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.hover { $0.alignItems(.baseline) }
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

        @Test
        func `HTML align-items with prefix renders properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.selector("my-component") { $0.alignItems(.flexEnd) }
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

        @Test
        func `HTML align-items with stretch value renders properly`() throws {
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
