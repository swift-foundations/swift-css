//
//  BackgroundAttachment Tests.swift
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
    @Suite
    struct `BackgroundAttachment Tests` {
        @Test
        func `HTML element renders with background-attachment fixed properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.backgroundAttachment(.fixed)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .background-attachment-0{background-attachment:fixed}
                    </style>
                  </head>
                  <body>
                    <div class="background-attachment-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test
        func `HTML element renders with background-attachment scroll properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.backgroundAttachment(.scroll)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .background-attachment-0{background-attachment:scroll}
                    </style>
                  </head>
                  <body>
                    <div class="background-attachment-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test
        func `HTML element renders with background-attachment local properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.backgroundAttachment(.local)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .background-attachment-0{background-attachment:local}
                    </style>
                  </head>
                  <body>
                    <div class="background-attachment-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test
        func `HTML background-attachment with global value renders properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.backgroundAttachment(.inherit)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .background-attachment-0{background-attachment:inherit}
                    </style>
                  </head>
                  <body>
                    <div class="background-attachment-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test
        func `HTML background-attachment with media query renders properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.print { $0.backgroundAttachment(.fixed) }
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      @media print{
                        .background-attachment-0{background-attachment:fixed}
                      }
                    </style>
                  </head>
                  <body>
                    <div class="background-attachment-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test
        func `HTML background-attachment with pseudo-class renders properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.hover { $0.backgroundAttachment(.fixed) }
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .background-attachment-0:hover{background-attachment:fixed}
                    </style>
                  </head>
                  <body>
                    <div class="background-attachment-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test
        func `HTML background-attachment with prefix renders properly`() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.selector("my-component") { $0.backgroundAttachment(.fixed) }
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      my-component .background-attachment-0{background-attachment:fixed}
                    </style>
                  </head>
                  <body>
                    <div class="background-attachment-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
    }
}
