//
//  AccentColor Tests.swift
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
    
    @Suite(
        "AccentColor Tests",
    )
    struct AccentColorTests {
        @Test("HTML element renders with accent-color properly")
        func htmlElementWithAccentColorRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.accentColor(.red)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .accent-color-0{accent-color:red}
                    </style>
                  </head>
                  <body>
                    <div class="accent-color-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML element renders with accent-color using hex color properly")
        func htmlElementWithAccentColorHexRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.accentColor(.color(.hex("FF0000")))
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .accent-color-0{accent-color:#FF0000}
                    </style>
                  </head>
                  <body>
                    <div class="accent-color-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML accent-color with global value renders properly")
        func htmlAccentColorWithGlobalValueRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.accentColor(.inherit)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .accent-color-0{accent-color:inherit}
                    </style>
                  </head>
                  <body>
                    <div class="accent-color-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML accent-color with media query renders properly")
        func htmlAccentColorWithMediaQueryRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.accentColor(.color(.hex("FF0000")), media: .print)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      @media print{
                        .accent-color-0{accent-color:#FF0000}
                      }
                    </style>
                  </head>
                  <body>
                    <div class="accent-color-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML accent-color with pseudo-class renders properly")
        func htmlAccentColorWithPseudoClassRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.accentColor(.color(.hex("FF0000")), pseudo: .hover)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .accent-color-0:hover{accent-color:#FF0000}
                    </style>
                  </head>
                  <body>
                    <div class="accent-color-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML accent-color with prefix renders properly")
        func htmlAccentColorWithPrefixRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.accentColor(.color(.hex("FF0000")), selector: "my-component")
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      my-component .accent-color-0{accent-color:#FF0000}
                    </style>
                  </head>
                  <body>
                    <div class="accent-color-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
    }
}
