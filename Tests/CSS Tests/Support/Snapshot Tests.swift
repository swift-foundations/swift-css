//
//  File.swift
//  swift-html-css-pointfree
//
//  Created by Coen ten Thije Boonkkamp on 21/11/2025.
//

import InlineSnapshotTesting
import Testing

@MainActor
@Suite(
    .serialized,
    .snapshots(record: .never)
)
struct `Snapshot Tests` {}
