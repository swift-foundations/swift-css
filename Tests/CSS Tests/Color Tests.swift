//
//  Color Tests.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 02/04/2025.
//

import CSS
import CSS_Standard
import CSS_Standard
import HTML_Renderable
import HTML_Renderable_TestSupport
import Testing

extension `Snapshot Tests` {
    @Suite(
        "Color Tests",
    )
    struct ColorTests {
        @Test("HTML element renders with named color properly")
        func htmlElementWithNamedColorRendersCorrectly() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div
                        .css.color(.red)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .color-0{color:red}
                    </style>
                  </head>
                  <body>
                    <div class="color-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML color method with pseudo-class parameter")
        func htmlColorMethodWithPseudoClassParameter() throws {
            
            let test = HTML.Document {
                div
                    .css.color(.hex("FF0000"), pseudo: .hover)
                
            }
            
            let html = String(bytes: test.render(), encoding: .utf8)!
            #expect(html.contains(":hover"))
            #expect(html.contains("color:#FF0000"))
            
        }
        
        @Test("HTML color with Color renders properly")
        func htmlColorMethodWithColorWorks() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div
                        .css.color(Color.color(.hex("FF0000")))
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      .color-0{color:#FF0000}
                    </style>
                  </head>
                  <body>
                    <div class="color-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
    }
}
