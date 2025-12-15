//
//  Appearance Tests.swift
//  swift-html
//
//  Created by Claude AI on 11/04/2025.
//

import CSS
import CSS_Standard
import CSS_Standard
import HTML_Renderable
import HTML_Rendering_TestSupport
import Testing

extension `Snapshot Tests` {
    @Suite
    struct `Appearance Tests` {
        @Test
        func `HTML element renders with appearance properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.appearance(Appearance.none)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .appearance-0{appearance:none}
                    </style>
                  </head>
                  <body>
                    <div class="appearance-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test
        func `HTML element renders with different appearance value properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.appearance(.auto)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .appearance-0{appearance:auto}
                    </style>
                  </head>
                  <body>
                    <div class="appearance-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test
        func `HTML appearance with global value renders properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.appearance(.inherit)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .appearance-0{appearance:inherit}
                    </style>
                  </head>
                  <body>
                    <div class="appearance-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test
        func `HTML appearance with media query renders properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.print { $0.appearance(Appearance.none) }
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      @media print{
                        .appearance-0{appearance:none}
                      }
                    </style>
                  </head>
                  <body>
                    <div class="appearance-0">
                    </div>
                  </body>
                </html>
                """
            }
        }

        @Test
        func `HTML appearance with pseudo-class renders properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.hover { $0.appearance(Appearance.none) }
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .appearance-0:hover{appearance:none}
                    </style>
                  </head>
                  <body>
                    <div class="appearance-0">
                    </div>
                  </body>
                </html>
                """
            }
        }

        @Test
        func `HTML appearance with prefix renders properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.selector("my-component") { $0.appearance(Appearance.none) }
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      my-component .appearance-0{appearance:none}
                    </style>
                  </head>
                  <body>
                    <div class="appearance-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
    }
}
