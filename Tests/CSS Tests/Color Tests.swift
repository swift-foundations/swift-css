//
//  Color Tests.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSS
import CSS_Standard
import HTML_Renderable
import HTML_Rendering_TestSupport
import Testing

extension `Snapshot Tests` {
    @Suite
    struct `Color Tests` {
        @Test
        func `HTML element renders with named color properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div
                        .css.color(.red)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .color-0{color:red}
                    </style>
                  </head>
                  <body>
                    <div class="color-0">
                    </div>
                  </body>
                </html>
                """
            }
        }

        @Test
        func `HTML color method with pseudo-class parameter`() throws {
            let test = HTML.Document {
                div
                    .css.hover { $0.color(.hex("FF0000")) }
            }

            let html = try String(test)
            #expect(html.contains(":hover"))
            #expect(html.contains("color:#FF0000"))
        }

        @Test
        func `HTML color with Color renders properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div
                        .css.color(Color.color(.hex("FF0000")))
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .color-0{color:#FF0000}
                    </style>
                  </head>
                  <body>
                    <div class="color-0">
                    </div>
                  </body>
                </html>
                """
            }
        }

        @Test
        func `HTML color with chained dark mode renders properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div
                        .css
                        .color(.red).dark(.blue)
                        .backgroundColor(.blue).dark(.red)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .background-color-1{background-color:blue}
                      .color-3{color:red}
                      @media (prefers-color-scheme: dark){
                        .background-color-0{background-color:red}
                        .color-2{color:blue}
                      }
                    </style>
                  </head>
                  <body>
                    <div class="background-color-0 background-color-1 color-2 color-3">
                    </div>
                  </body>
                </html>
                """
            }
        }
    }
}
