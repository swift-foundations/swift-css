import CSS
import CSS_Standard
import HTML_Renderable
import HTML_Renderable_TestSupport
import Testing

extension `Snapshot Tests` {
    @Suite(
        "Media Tests",
    )
    struct MediaTests {
        @Test("HTML element rendering with basic media query")
        func htmlElementRenderingWithBasicMediaQuery() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.backgroundColor(.blue, media: .screen)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      @media screen{
                        .background-color-0{background-color:blue}
                      }
                    </style>
                  </head>
                  <body>
                    <div class="background-color-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML element rendering with complex media query")
        func htmlElementRenderingWithComplexMediaQuery() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.backgroundColor(
                        .blue,
                        media: Media.screen
                            .and(.maxWidth(.px(500)))
                            .and(.prefersColorScheme(.dark))
                    )
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      @media screen and (max-width: 500px) and (prefers-color-scheme: dark){
                        .background-color-0{background-color:blue}
                      }
                    </style>
                  </head>
                  <body>
                    <div class="background-color-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML element rendering with negated media query")
        func htmlElementRenderingWithNegatedMediaQuery() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.backgroundColor(.blue, media: !Media.print)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      @media not print{
                        .background-color-0{background-color:blue}
                      }
                    </style>
                  </head>
                  <body>
                    <div class="background-color-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML element rendering with media OR query")
        func htmlElementRenderingWithMediaOrQuery() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.backgroundColor(.blue, media: Media.screen || Media.print)
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      @media screen, print{
                        .background-color-0{background-color:blue}
                      }
                    </style>
                  </head>
                  <body>
                    <div class="background-color-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML element rendering with only operator")
        func htmlElementRenderingWithOnlyOperator() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.backgroundColor(.blue, media: Media.screen.only())
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      @media only screen{
                        .background-color-0{background-color:blue}
                      }
                    </style>
                  </head>
                  <body>
                    <div class="background-color-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML element rendering with feature-only media query")
        func htmlElementRenderingWithFeatureOnlyMediaQuery() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div.css.backgroundColor(.blue, media: .prefersColorScheme(.dark))
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      @media (prefers-color-scheme: dark){
                        .background-color-0{background-color:blue}
                      }
                    </style>
                  </head>
                  <body>
                    <div class="background-color-0">
                    </div>
                  </body>
                </html>
                """
            }
        }
        
        @Test("HTML element rendering with multiple properties in media query")
        func htmlElementRenderingWithMultiplePropertiesInMediaQuery() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div
                        .css.backgroundColor(.blue, media: Media.screen && .maxWidth(.px(768)))
                        .css.color(.white, media: Media.screen && .maxWidth(.px(768)))
                        .css.padding(.px(20), media: Media.screen && .maxWidth(.px(768)))
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      @media screen and (max-width: 768px){
                        .padding-0{padding:20px}
                        .color-1{color:white}
                        .background-color-2{background-color:blue}
                      }
                    </style>
                  </head>
                  <body>
                    <div class="padding-0 color-1 background-color-2">
                    </div>
                  </body>
                </html>
                """
            }
        }

        @Test("HTML element rendering with media query and pseudo-class")
        func htmlElementRenderingWithMediaQueryAndPseudoClass() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div
                        .css.backgroundColor(.blue, media: .screen && .minWidth(.px(768)))
                        .css.backgroundColor(.red, media: Media.screen && .minWidth(.px(768)))
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      @media screen and (min-width: 768px){
                        .background-color-0{background-color:red}
                        .background-color-1{background-color:blue}
                      }
                    </style>
                  </head>
                  <body>
                    <div class="background-color-0 background-color-1">
                    </div>
                  </body>
                </html>
                """
            }
        }

        @Test("HTML element rendering with multiple media queries")
        func htmlElementRenderingWithMultipleMediaQueries() throws {
            assertInlineSnapshot(
                of: HTML.Document {
                    div
                        .css.backgroundColor(.blue, media: .screen && .minWidth(.px(768)))
                        .css.color(.white, media: .screen && .prefersColorScheme(.dark))
                },
                as: .html
            ) {
                """
                <!doctype html>
                <html>
                  <head>
                    <style>
                      @media screen and (prefers-color-scheme: dark){
                        .color-0{color:white}
                      }
                      @media screen and (min-width: 768px){
                        .background-color-1{background-color:blue}
                      }
                    </style>
                  </head>
                  <body>
                    <div class="color-0 background-color-1">
                    </div>
                  </body>
                </html>
                """
            }
        }
    }
}
