////
////  AnimationDuration Tests.swift
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
// @Suite(
//    "AnimationDuration Tests",
// )
// struct AnimationDurationTests {
//    @Test
//    func htmlElementWithAnimationDurationTimeRendersCorrectly() throws {
//        assertInlineSnapshot(
//            of: HTML.Document {
//                div.animationDuration(.time)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html>
//              <head>
//                <style>
//            .animation-duration-jrYNbv{animation-duration:3s}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-duration-jrYNbv">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//
//    @Test
//    func htmlElementWithAnimationDurationMillisecondsRendersCorrectly() throws {
//        assertInlineSnapshot(
//            of: HTML.Document {
//                div.animationDuration(.time)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html>
//              <head>
//                <style>
//            .animation-duration-Akt0Gk{animation-duration:200ms}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-duration-Akt0Gk">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//
//    @Test
//    func htmlElementWithAnimationDurationMultipleTimesRendersCorrectly() throws {
//        assertInlineSnapshot(
//            of: HTML.Document {
//                div.animationDuration(.times(["1s", "2.5s"]))
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html>
//              <head>
//                <style>
//            .animation-duration-6Nkxph{animation-duration:1s, 2.5s}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-duration-6Nkxph">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//
//    @Test
//    func htmlAnimationDurationWithGlobalValueRendersCorrectly() throws {
//        assertInlineSnapshot(
//            of: HTML.Document {
//                div.animationDuration(.inherit)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html>
//              <head>
//                <style>
//            .animation-duration-trEDH1{animation-duration:inherit}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-duration-trEDH1">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//
//    @Test
//    func htmlAnimationDurationWithMediaQueryRendersCorrectly() throws {
//        assertInlineSnapshot(
//            of: HTML.Document {
//                div.animationDuration(.time, media: .print)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html>
//              <head>
//                <style>
//            @media print{
//              .animation-duration-OYP8Hm{animation-duration:0.5s}
//            }
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-duration-OYP8Hm">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//
//    @Test
//    func htmlAnimationDurationWithPseudoClassRendersCorrectly() throws {
//        assertInlineSnapshot(
//            of: HTML.Document {
//                div.animationDuration(.time, pseudo: .hover)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html>
//              <head>
//                <style>
//            .animation-duration-4jOFVl:hover{animation-duration:1.5s}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-duration-4jOFVl">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//
//    @Test
//    func htmlAnimationDurationWithPrefixRendersCorrectly() throws {
//        assertInlineSnapshot(
//            of: HTML.Document {
//                div.animationDuration(.time, selector: "my-component")
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html>
//              <head>
//                <style>
//            my-component .animation-duration-D4Z2Sg{animation-duration:300ms}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-duration-D4Z2Sg">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//
//    @Test
//    func htmlAnimationDurationWithZeroValueRendersCorrectly() throws {
//        assertInlineSnapshot(
//            of: HTML.Document {
//                div.animationDuration(.time)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html>
//              <head>
//                <style>
//            .animation-duration-z4x9uP{animation-duration:0s}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-duration-z4x9uP">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
// }
