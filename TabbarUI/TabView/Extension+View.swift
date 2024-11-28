//
//  Extension+View.swift
//  TabbarUI
//
//  Created by Gokhan on 28.11.2024.
//

import SwiftUI

extension View {
    func tabItem(
        _ title: String,
        image: UIImage?,
        selectedImage: UIImage? = nil,
        badgeValue: String? = nil
    ) -> TabBarItem {
        TabBarItem(
            title: title,
            image: image,
            selectedImage: selectedImage,
            badgeValue: badgeValue,
            content: self
        )
    }
}
