//
//  BackgroundBlendMode Tests.swift
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
    struct `BackgroundBlendMode Tests` {
        @Test
        func `HTML element renders with background-blend-mode normal properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.backgroundBlendMode(.normal)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .background-blend-mode-0{background-blend-mode:normal}
                    </style>
                  </head>
                  <body>
                    <div class="background-blend-mode-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test
        func `HTML element renders with background-blend-mode multiply properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.backgroundBlendMode(.multiply)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .background-blend-mode-0{background-blend-mode:multiply}
                    </style>
                  </head>
                  <body>
                    <div class="background-blend-mode-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test
        func `HTML element renders with background-blend-mode screen properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.backgroundBlendMode(.screen)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .background-blend-mode-0{background-blend-mode:screen}
                    </style>
                  </head>
                  <body>
                    <div class="background-blend-mode-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test
        func `HTML element renders with background-blend-mode overlay properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.backgroundBlendMode(.overlay)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .background-blend-mode-0{background-blend-mode:overlay}
                    </style>
                  </head>
                  <body>
                    <div class="background-blend-mode-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test
        func `HTML background-blend-mode with global value renders properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.backgroundBlendMode(.inherit)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .background-blend-mode-0{background-blend-mode:inherit}
                    </style>
                  </head>
                  <body>
                    <div class="background-blend-mode-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test
        func `HTML background-blend-mode with media query renders properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.print { $0.backgroundBlendMode(.multiply) }
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      @media print{
                        .background-blend-mode-0{background-blend-mode:multiply}
                      }
                    </style>
                  </head>
                  <body>
                    <div class="background-blend-mode-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test
        func `HTML background-blend-mode with pseudo-class renders properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.hover { $0.backgroundBlendMode(.multiply) }
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .background-blend-mode-0:hover{background-blend-mode:multiply}
                    </style>
                  </head>
                  <body>
                    <div class="background-blend-mode-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test
        func `HTML background-blend-mode with prefix renders properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.selector("my-component") { $0.backgroundBlendMode(.multiply) }
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      my-component .background-blend-mode-0{background-blend-mode:multiply}
                    </style>
                  </head>
                  <body>
                    <div class="background-blend-mode-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
    }
}
