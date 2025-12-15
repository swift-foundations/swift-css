//
//  AlignContent Tests.swift
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
    struct `AlignContent Tests` {
        @Test
        func `HTML element renders with align-content properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.alignContent(.center)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .align-content-0{align-content:center}
                    </style>
                  </head>
                  <body>
                    <div class="align-content-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test
        func `HTML element renders with align-content flex-start value`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.alignContent(.flexStart)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .align-content-0{align-content:flex-start}
                    </style>
                  </head>
                  <body>
                    <div class="align-content-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test
        func `HTML align-content with global value renders properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.alignContent(.inherit)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .align-content-0{align-content:inherit}
                    </style>
                  </head>
                  <body>
                    <div class="align-content-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test
        func `HTML align-content with media query renders properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.print { $0.alignContent(.center) }
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      @media print{
                        .align-content-0{align-content:center}
                      }
                    </style>
                  </head>
                  <body>
                    <div class="align-content-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test
        func `HTML align-content with pseudo-class renders properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.hover { $0.alignContent(.spaceAround) }
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .align-content-0:hover{align-content:space-around}
                    </style>
                  </head>
                  <body>
                    <div class="align-content-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test
        func `HTML align-content with prefix renders properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.selector("my-component") { $0.alignContent(.spaceBetween) }
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      my-component .align-content-0{align-content:space-between}
                    </style>
                  </head>
                  <body>
                    <div class="align-content-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test
        func `HTML align-content with stretch value renders properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.alignContent(.stretch)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .align-content-0{align-content:stretch}
                    </style>
                  </head>
                  <body>
                    <div class="align-content-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
    }
}
