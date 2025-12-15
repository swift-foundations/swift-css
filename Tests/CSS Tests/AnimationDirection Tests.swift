////
////  AnimationDirection Tests.swift
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
//    "AnimationDirection Tests",
// )
// struct AnimationDirectionTests {
//    @Test
//    func htmlElementWithAnimationDirectionNormalRendersCorrectly() throws {
//        assertInlineSnapshot(
//            of: HTML.Document {
//                div.css.animationDirection(.normal)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html>
//              <head>
//                <style>
//            .animation-direction-LtYIz5{animation-direction:normal}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-direction-LtYIz5">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//
//    @Test
//    func htmlElementWithAnimationDirectionReverseRendersCorrectly() throws {
//        assertInlineSnapshot(
//            of: HTML.Document {
//                div.css.animationDirection(.reverse)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html>
//              <head>
//                <style>
//            .animation-direction-UBNKL3{animation-direction:reverse}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-direction-UBNKL3">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//
//    @Test
//    func htmlElementWithAnimationDirectionAlternateRendersCorrectly() throws {
//        assertInlineSnapshot(
//            of: HTML.Document {
//                div.css.animationDirection(.alternate)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html>
//              <head>
//                <style>
//            .animation-direction-AzrRng{animation-direction:alternate}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-direction-AzrRng">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//
//    @Test
//    func htmlElementWithAnimationDirectionAlternateReverseRendersCorrectly() throws {
//        assertInlineSnapshot(
//            of: HTML.Document {
//                div.css.animationDirection(.alternateReverse)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html>
//              <head>
//                <style>
//            .animation-direction-HF0GG1{animation-direction:alternate-reverse}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-direction-HF0GG1">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//
//    @Test
//    func htmlAnimationDirectionWithGlobalValueRendersCorrectly() throws {
//        assertInlineSnapshot(
//            of: HTML.Document {
//                div.css.animationDirection(.inherit)
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html>
//              <head>
//                <style>
//            .animation-direction-trEDH1{animation-direction:inherit}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-direction-trEDH1">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//
//    @Test
//    func htmlAnimationDirectionWithMediaQueryRendersCorrectly() throws {
//        assertInlineSnapshot(
//            of: HTML.Document {
//                div.css.print { $0.animationDirection(.alternate) }
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html>
//              <head>
//                <style>
//            @media print{
//              .animation-direction-aSLbO3{animation-direction:alternate}
//            }
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-direction-aSLbO3">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//
//    @Test
//    func htmlAnimationDirectionWithPseudoClassRendersCorrectly() throws {
//        assertInlineSnapshot(
//            of: HTML.Document {
//                div.css.hover { $0.animationDirection(.reverse) }
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html>
//              <head>
//                <style>
//            .animation-direction-1EDVMm:hover{animation-direction:reverse}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-direction-1EDVMm">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
//
//    @Test
//    func htmlAnimationDirectionWithPrefixRendersCorrectly() throws {
//        assertInlineSnapshot(
//            of: HTML.Document {
//                div.css.selector("my-component") { $0.animationDirection(.normal) }
//            },
//            as: .html
//        ) {
//            """
//            <!doctype html>
//            <html>
//              <head>
//                <style>
//            my-component .animation-direction-sODZv0{animation-direction:normal}
//
//                </style>
//              </head>
//              <body>
//            <div class="animation-direction-sODZv0">
//            </div>
//              </body>
//            </html>
//            """
//        }
//    }
// }
