//
//  Background Tests.swift
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
        "Background Tests"
    )
    struct BackgroundTests {
        @Test("HTML element renders with background color properly")
        func htmlElementWithBackgroundColorRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.background(.red)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .background-0{background:red}
                    </style>
                  </head>
                  <body>
                    <div class="background-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML element renders with background image properly")
        func htmlElementWithBackgroundImageRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.background(.image("image.jpg"))
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .background-0{background:url("image.jpg")}
                    </style>
                  </head>
                  <body>
                    <div class="background-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        //    @Test("HTML element renders with complex background properly")
        //    func htmlElementWithComplexBackgroundRendersCorrectly() throws {
        //        assertInlineSnapshot(
        //            of: HTML.Document {
        //                div.css.background(.composite([.color(.red), .image(.url("image.jpg"))]))
        //            },
        //            as: .html
        //        ) {
        //            """
        //            <!doctype html>
        //            <html>
        //              <head>
        //                <style>
        //            .background-yFkjt1{background:red url("image.jpg")}
        //
        //                </style>
        //              </head>
        //              <body>
        //            <div class="background-yFkjt1">
        //            </div>
        //              </body>
        //            </html>
        //            """
        //        }
        //    }
        
        @Test("HTML background with none value renders properly")
        func htmlBackgroundWithNoneValueRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.background(Background.none)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .background-0{background:none}
                    </style>
                  </head>
                  <body>
                    <div class="background-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML background with global value renders properly")
        func htmlBackgroundWithGlobalValueRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.background(.inherit)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .background-0{background:inherit}
                    </style>
                  </head>
                  <body>
                    <div class="background-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML background with media query renders properly")
        func htmlBackgroundWithMediaQueryRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.background(.red, media: .print)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      @media print{
                        .background-0{background:red}
                      }
                    </style>
                  </head>
                  <body>
                    <div class="background-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML background with pseudo-class renders properly")
        func htmlBackgroundWithPseudoClassRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.background(.red, pseudo: .hover)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .background-0:hover{background:red}
                    </style>
                  </head>
                  <body>
                    <div class="background-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML background with prefix renders properly")
        func htmlBackgroundWithPrefixRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.background(.red, selector: "my-component")
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      my-component .background-0{background:red}
                    </style>
                  </head>
                  <body>
                    <div class="background-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
    }
}
