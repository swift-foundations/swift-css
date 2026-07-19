//
//  DarkModeColor.Theme Concurrency Tests.swift
//  swift-css
//
//  Regression coverage for F-002: the global prepared theme storage must stay
//  internally consistent under concurrent `_prepare` writes and `current` reads.
//

import CSS
import CSS_Theming
import Testing

extension DarkModeColor.Theme {
    @Suite
    struct `Edge Case` {

        @Test
        func `prepare and current never observe a torn value under concurrent access`() async {
            let snapshotA: DarkModeColor.Theme = {
                var theme = DarkModeColor.Theme.default
                theme.gray = DarkModeColor(light: .hex("111111"), dark: .hex("222222"))
                theme.blue = DarkModeColor(light: .hex("111111"), dark: .hex("222222"))
                return theme
            }()

            let snapshotB: DarkModeColor.Theme = {
                var theme = DarkModeColor.Theme.default
                theme.gray = DarkModeColor(light: .hex("eeeeee"), dark: .hex("dddddd"))
                theme.blue = DarkModeColor(light: .hex("eeeeee"), dark: .hex("dddddd"))
                return theme
            }()

            defer { DarkModeColor.Theme._prepare(.default) }

            // Seed synchronously before any concurrent access starts: otherwise a
            // reader task can legitimately run before the first writer task, observing
            // the pre-test `.default` value (which matches neither snapshot) and
            // producing a false-positive "torn value" report unrelated to the fix
            // under test.
            DarkModeColor.Theme._prepare(snapshotA)

            await withTaskGroup(of: Void.self) { group in
                for i in 0..<4_000 {
                    group.addTask {
                        DarkModeColor.Theme._prepare(i.isMultiple(of: 2) ? snapshotA : snapshotB)
                    }
                    group.addTask {
                        let observed = DarkModeColor.Theme.current
                        let matchesA =
                            observed.gray == snapshotA.gray && observed.blue == snapshotA.blue
                        let matchesB =
                            observed.gray == snapshotB.gray && observed.blue == snapshotB.blue
                        #expect(
                            matchesA || matchesB,
                            "observed a torn theme mixing fields from two different prepared values"
                        )
                    }
                }
            }
        }
    }
}
