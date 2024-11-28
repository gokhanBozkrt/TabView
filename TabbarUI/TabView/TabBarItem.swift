//
//  TabbarItem.swift
//  TabbarUI
//
//  Created by Gokhan on 28.11.2024.
//

import SwiftUI

struct TabBarItem {
        let view: AnyView
        let barItem: UITabBarItem
        let badgeValue: String?

        init<T>(
            title: String,
            image: UIImage?,
            selectedImage: UIImage? = nil,
            badgeValue: String? = nil,
            content: T
        ) where T: View {
            self.view = AnyView(content)
            self.barItem = UITabBarItem(title: title, image: image, selectedImage: selectedImage)
            self.badgeValue = badgeValue
        }
    }
