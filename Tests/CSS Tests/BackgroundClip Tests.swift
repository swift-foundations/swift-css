//
//  BackgroundClip Tests.swift
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
        "BackgroundClip Tests",
    )
    struct BackgroundClipTests {
        @Test("HTML element renders with background-clip border-box properly")
        func htmlElementWithBackgroundClipBorderBoxRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.backgroundClip(.borderBox)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .background-clip-0{background-clip:border-box}
                    </style>
                  </head>
                  <body>
                    <div class="background-clip-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML element renders with background-clip padding-box properly")
        func htmlElementWithBackgroundClipPaddingBoxRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.backgroundClip(.paddingBox)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .background-clip-0{background-clip:padding-box}
                    </style>
                  </head>
                  <body>
                    <div class="background-clip-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML element renders with background-clip content-box properly")
        func htmlElementWithBackgroundClipContentBoxRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.backgroundClip(.contentBox)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .background-clip-0{background-clip:content-box}
                    </style>
                  </head>
                  <body>
                    <div class="background-clip-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML element renders with background-clip text properly")
        func htmlElementWithBackgroundClipTextRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.backgroundClip(.text)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .background-clip-0{background-clip:text}
                    </style>
                  </head>
                  <body>
                    <div class="background-clip-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML background-clip with global value renders properly")
        func htmlBackgroundClipWithGlobalValueRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.backgroundClip(.inherit)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .background-clip-0{background-clip:inherit}
                    </style>
                  </head>
                  <body>
                    <div class="background-clip-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML background-clip with media query renders properly")
        func htmlBackgroundClipWithMediaQueryRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.backgroundClip(.contentBox, media: .print)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      @media print{
                        .background-clip-0{background-clip:content-box}
                      }
                    </style>
                  </head>
                  <body>
                    <div class="background-clip-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML background-clip with pseudo-class renders properly")
        func htmlBackgroundClipWithPseudoClassRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.backgroundClip(.contentBox, pseudo: .hover)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .background-clip-0:hover{background-clip:content-box}
                    </style>
                  </head>
                  <body>
                    <div class="background-clip-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML background-clip with prefix renders properly")
        func htmlBackgroundClipWithPrefixRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.backgroundClip(.contentBox, selector: "my-component")
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      my-component .background-clip-0{background-clip:content-box}
                    </style>
                  </head>
                  <body>
                    <div class="background-clip-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
    }
}
