//
//  TabBarController.swift
//  TabbarUI
//
//  Created by Gokhan on 28.11.2024.
//

import SwiftUI

struct TabBarController: UIViewControllerRepresentable {
    let controllers: [UIViewController]
    let tabBarItems: [TabBarItem]
    @Binding var selectedIndex: Int
    
    func makeUIViewController(context: Context) -> UITabBarController {
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = controllers
        
        tabBarController.delegate = context.coordinator
        tabBarController.selectedIndex = selectedIndex
        tabBarController.tabBar.backgroundColor = UIColor(named: "top_bottom_navigation_bar_bg_color")
        return tabBarController
    }
    
    func updateUIViewController(_ tabBarController: UITabBarController, context: Context) {
        tabBarController.selectedIndex = selectedIndex
        
        tabBarItems.forEach { tab in
            guard let index = tabBarItems.firstIndex(where: { $0.barItem == tab.barItem }),
                  let controllers = tabBarController.viewControllers
            else {
                return
            }
            
            guard controllers.indices.contains(index) else { return }
            controllers[index].tabBarItem.badgeValue = tab.badgeValue
        }
    }
    
    func makeCoordinator() -> TabBarCoordinator {
        TabBarCoordinator(self)
    }
    
    
    class TabBarCoordinator: NSObject, UITabBarControllerDelegate {
        private static let inlineTitleRect = CGRect(x: 0, y: 0, width: 1, height: 1)
        private var parent: TabBarController
        
        init(_ tabBarController: TabBarController) {
            self.parent = tabBarController
        }
        

        
        func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
            guard parent.selectedIndex == tabBarController.selectedIndex else {
                parent.selectedIndex = tabBarController.selectedIndex
                return
            }
            

            
        }
    }
}
