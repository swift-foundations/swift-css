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
import HTML_Rendering_TestSupport
import Testing

extension `Snapshot Tests` {
    @Suite
    struct `AlignSelf Tests` {
        @Test
        func `HTML element renders with align-self properly`() throws {
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
        
        @Test
        func `HTML element renders with align-self auto value`() throws {
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
        
        @Test
        func `HTML align-self with global value renders properly`() throws {
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
        
        @Test
        func `HTML align-self with media query renders properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.print { $0.alignSelf(.center) }
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
        
        @Test
        func `HTML align-self with pseudo-class renders properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.hover { $0.alignSelf(.baseline) }
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
        
        @Test
        func `HTML align-self with prefix renders properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.selector("my-component") { $0.alignSelf(.flexEnd) }
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
        
        @Test
        func `HTML align-self with stretch value renders properly`() throws {
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
