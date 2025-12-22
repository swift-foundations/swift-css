//
//  AspectRatio Tests.swift
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
    struct `AspectRatio Tests` {
        @Test
        func `HTML element renders with aspect-ratio properly`() throws {
            let ratio = try AspectRatio.ratio(16, 9)
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.aspectRatio(ratio)
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

        @Test
        func `HTML element renders with different aspect-ratio value properly`() throws {
            let ratio = try AspectRatio.ratio(4, 3)
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.aspectRatio(ratio)
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

        @Test
        func `HTML element renders with auto aspect-ratio properly`() throws {
            let ratio = try AspectRatio.auto
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.aspectRatio(ratio)
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

        @Test
        func `HTML aspect-ratio with global value renders properly`() throws {
            let ratio = try AspectRatio.inherit
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.aspectRatio(ratio)
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

        @Test
        func `HTML aspect-ratio with media query renders properly`() throws {
            let ratio = try AspectRatio.ratio(16, 9)
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.print { $0.aspectRatio(ratio) }
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

        @Test
        func `HTML aspect-ratio with pseudo-class renders properly`() throws {
            let ratio = try AspectRatio.ratio(16, 9)
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.hover { $0.aspectRatio(ratio) }
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

        @Test
        func `HTML aspect-ratio with prefix renders properly`() throws {
            let ratio = try AspectRatio.ratio(16, 9)
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.selector("my-component") { $0.aspectRatio(ratio) }
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
