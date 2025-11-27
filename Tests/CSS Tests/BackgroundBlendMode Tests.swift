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
import HTML_Renderable_TestSupport
import Testing

extension `Snapshot Tests` {
    @Suite(
        "BackgroundBlendMode Tests",
    )
    struct BackgroundBlendModeTests {
        @Test("HTML element renders with background-blend-mode normal properly")
        func htmlElementWithBackgroundBlendModeNormalRendersCorrectly() throws {
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
        
        @Test("HTML element renders with background-blend-mode multiply properly")
        func htmlElementWithBackgroundBlendModeMultiplyRendersCorrectly() throws {
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
        
        @Test("HTML element renders with background-blend-mode screen properly")
        func htmlElementWithBackgroundBlendModeScreenRendersCorrectly() throws {
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
        
        @Test("HTML element renders with background-blend-mode overlay properly")
        func htmlElementWithBackgroundBlendModeOverlayRendersCorrectly() throws {
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
        
        @Test("HTML background-blend-mode with global value renders properly")
        func htmlBackgroundBlendModeWithGlobalValueRendersCorrectly() throws {
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
        
        @Test("HTML background-blend-mode with media query renders properly")
        func htmlBackgroundBlendModeWithMediaQueryRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.backgroundBlendMode(.multiply, media: .print)
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
        
        @Test("HTML background-blend-mode with pseudo-class renders properly")
        func htmlBackgroundBlendModeWithPseudoClassRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.backgroundBlendMode(.multiply, pseudo: .hover)
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
        
        @Test("HTML background-blend-mode with prefix renders properly")
        func htmlBackgroundBlendModeWithPrefixRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.backgroundBlendMode(.multiply, selector: "my-component")
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
