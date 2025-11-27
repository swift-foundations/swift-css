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
import HTML_Renderable_TestSupport
import Testing

extension `Snapshot Tests` {
    @Suite(
        "Appearance Tests"
    )
    struct AppearanceTests {
        @Test("HTML element renders with appearance properly")
        func htmlElementWithAppearanceRendersCorrectly() throws {
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
        
        @Test("HTML element renders with different appearance value properly")
        func htmlElementWithDifferentAppearanceRendersCorrectly() throws {
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
        
        @Test("HTML appearance with global value renders properly")
        func htmlAppearanceWithGlobalValueRendersCorrectly() throws {
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
        
        @Test("HTML appearance with media query renders properly")
        func htmlAppearanceWithMediaQueryRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.appearance(Appearance.none, media: .print)
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
        
        @Test("HTML appearance with pseudo-class renders properly")
        func htmlAppearanceWithPseudoClassRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.appearance(Appearance.none, pseudo: .hover)
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
        
        @Test("HTML appearance with prefix renders properly")
        func htmlAppearanceWithPrefixRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.appearance(Appearance.none, selector: "my-component")
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
