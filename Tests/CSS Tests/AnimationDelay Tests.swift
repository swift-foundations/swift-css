////
////  AnimationDelay Tests.swift
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
// import HTML_Renderable_TestSupport
//
// @Suite(
//    "AnimationDelay Tests",
// )
// struct AnimationDelayTests {
//    @Test
//    func htmlElementWithAnimationDelayTimeRendersCorrectly() throws {
//        assertInlineSnapshot(
//            of: HTML.Document {
//                div.css.animationDelay(.time)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html>
//              <head>
//                <style>
//            .animation-delay-atnwFz{animation-delay:2s}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-delay-atnwFz">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//
//    @Test
//    func htmlElementWithAnimationDelayMillisecondsRendersCorrectly() throws {
//        assertInlineSnapshot(
//            of: HTML.Document {
//                div.css.animationDelay(.time)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html>
//              <head>
//                <style>
//            .animation-delay-DqVdD4{animation-delay:500ms}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-delay-DqVdD4">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//
//    @Test
//    func htmlElementWithAnimationDelayMultipleTimesRendersCorrectly() throws {
//        assertInlineSnapshot(
//            of: HTML.Document {
//                div.css.animationDelay(.times(["2s", "4s"]))
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html>
//              <head>
//                <style>
//            .animation-delay-Fxvhj3{animation-delay:2s, 4s}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-delay-Fxvhj3">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//
//    @Test
//    func htmlAnimationDelayWithGlobalValueRendersCorrectly() throws {
//        assertInlineSnapshot(
//            of: HTML.Document {
//                div.css.animationDelay(.inherit)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html>
//              <head>
//                <style>
//            .animation-delay-trEDH1{animation-delay:inherit}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-delay-trEDH1">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//
//    @Test
//    func htmlAnimationDelayWithMediaQueryRendersCorrectly() throws {
//        assertInlineSnapshot(
//            of: HTML.Document {
//                div.css.animationDelay(.time, media: .print)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html>
//              <head>
//                <style>
//            @media print{
//              .animation-delay-1C5bE2{animation-delay:1.5s}
//            }
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-delay-1C5bE2">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//
//    @Test
//    func htmlAnimationDelayWithPseudoClassRendersCorrectly() throws {
//        assertInlineSnapshot(
//            of: HTML.Document {
//                div.css.animationDelay(.time, pseudo: .hover)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html>
//              <head>
//                <style>
//            .animation-delay-YE9O7d:hover{animation-delay:0.3s}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-delay-YE9O7d">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//
//    @Test
//    func htmlAnimationDelayWithPrefixRendersCorrectly() throws {
//        assertInlineSnapshot(
//            of: HTML.Document {
//                div.css.animationDelay(.time, selector: "my-component")
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html>
//              <head>
//                <style>
//            my-component .animation-delay-KtQeSh{animation-delay:1s}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-delay-KtQeSh">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//
//    @Test
//    func htmlAnimationDelayWithNegativeTimeValueRendersCorrectly() throws {
//        assertInlineSnapshot(
//            of: HTML.Document {
//                div.css.animationDelay(.time)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html>
//              <head>
//                <style>
//            .animation-delay-RfDhO3{animation-delay:-0.5s}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-delay-RfDhO3">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
// }
