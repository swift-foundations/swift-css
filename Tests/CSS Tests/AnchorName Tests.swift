//
//  AnchorName Tests.swift
//  swift-html
//
//  Created by Claude AI on 11/04/2025.
//

import CSS
import CSS_Standard
import HTML_Renderable
import HTML_Renderable_TestSupport
import Testing

extension `Snapshot Tests` {
    @Suite
    struct `AnchorName Tests` {
        @Test
        func `HTML element renders with anchor-name string value properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.anchorName(.single(.init("--section-header")))
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

        @Test
        func `HTML element renders with anchor-name none value`() throws {
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

        @Test
        func `HTML anchor-name with global value renders properly`() throws {
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

        @Test
        func `HTML anchor-name with media query renders properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.print { $0.anchorName(.single(.init("--section-intro"))) }
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

        @Test
        func `HTML anchor-name with pseudo-class renders properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.hover { $0.anchorName(.single(.init("--heading"))) }
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

        @Test
        func `HTML anchor-name with prefix renders properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.selector("my-component") { $0.anchorName(.single(.init("--footer"))) }
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
