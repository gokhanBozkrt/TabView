//
//  TabBuilder.swift
//  TabbarUI
//
//  Created by Gokhan on 28.11.2024.
//

import Foundation

@resultBuilder
struct TabBuilder {
static func buildBlock(_ elements: TabBarItem...) -> [TabBarItem] {
    elements
}
}
