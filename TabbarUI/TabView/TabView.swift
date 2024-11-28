//
//  TabView.swift
//  TabbarUI
//
//  Created by Gokhan on 28.11.2024.
//

import SwiftUI

struct TabView: View {
    private let viewControllers: [UIHostingController<AnyView>]
    private let tabBarItems: [TabBarItem]
    @Binding private var selectedIndex: Int

    init(selection: Binding<Int>, @TabBuilder _ content: () -> [TabBarItem]) {
        _selectedIndex = selection

        (viewControllers, tabBarItems) = content().reduce(into: ([], [])) { result, next in
            let tabController = UIHostingController(rootView: next.view)
            tabController.tabBarItem = next.barItem
            result.0.append(tabController)
            result.1.append(next)
        }
    }

    var body: some View {
        TabBarController(
            controllers: viewControllers,
            tabBarItems: tabBarItems,
            selectedIndex: $selectedIndex
        )
        .edgesIgnoringSafeArea(.bottom)
    }
}
