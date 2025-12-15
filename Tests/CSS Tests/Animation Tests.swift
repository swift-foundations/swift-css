////
////  Animation Tests.swift
////  swift-html
////
////  Created by Claude AI on 11/04/2025.
////
//
// import Testing
// import CSS
// import HTML_Renderable
// import CSS_Standard
// import CSS_Standard
// // import DependenciesTestSupport
// import InlineSnapshotTesting
// import HTML_Rendering_TestSupport
//
// "3s ease-in 1s infinite reverse both running slidein"
//
// @Suite(
//    "Animation Tests",
// )
// struct AnimationTests {
//    @Test
//    func htmlElementWithAnimationStringRendersCorrectly() throws {
//        assertInlineSnapshot(
//            of: HTML.Document {
//                div.css.animation(.init(.duration(.s(3)), .timingFunction(.easeIn), .duration(.s(3)), .))
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html>
//              <head>
//                <style>
//            .animation-RzKmLe{animation:3s ease-in 1s infinite reverse both running slidein}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-RzKmLe">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//
//    @Test
//    func htmlElementWithAnimationSimpleRendersCorrectly() throws {
//        assertInlineSnapshot(
//            of: HTML.Document {
//                div.css.animation(.string)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html>
//              <head>
//                <style>
//            .animation-WkDfA3{animation:fadeIn 2s}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-WkDfA3">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//
//    @Test
//    func htmlAnimationWithGlobalValueRendersCorrectly() throws {
//        assertInlineSnapshot(
//            of: HTML.Document {
//                div.css.animation(.inherit)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html>
//              <head>
//                <style>
//            .animation-trEDH1{animation:inherit}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-trEDH1">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//
//    @Test
//    func htmlAnimationWithMediaQueryRendersCorrectly() throws {
//        assertInlineSnapshot(
//            of: HTML.Document {
//                div.css.animation(.string, media: .print)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html>
//              <head>
//                <style>
//            @media print{
//              .animation-4k5svo{animation:bounce 1s}
//            }
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-4k5svo">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//
//    @Test
//    func htmlAnimationWithPseudoClassRendersCorrectly() throws {
//        assertInlineSnapshot(
//            of: HTML.Document {
//                div.css.animation(.string, pseudo: .hover)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html>
//              <head>
//                <style>
//            .animation-pG3fH2:hover{animation:pulse 3s infinite}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-pG3fH2">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//
//    @Test
//    func htmlAnimationWithPrefixRendersCorrectly() throws {
//        assertInlineSnapshot(
//            of: HTML.Document {
//                div.css.animation(.string, selector: "my-component")
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html>
//              <head>
//                <style>
//            my-component .animation-9LLdQl{animation:slide 2s ease-out}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-9LLdQl">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//
//    @Test
//    func htmlAnimationWithNoneValueRendersCorrectly() throws {
//        assertInlineSnapshot(
//            of: HTML.Document {
//                div.css.animation(.none)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html>
//              <head>
//                <style>
//            .animation-3ZLVsZ{animation:none}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-3ZLVsZ">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
// }
