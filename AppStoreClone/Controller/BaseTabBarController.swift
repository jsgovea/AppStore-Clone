//
//  BaseTabBarController.swift
//  AppStoreClone
//
//  Created by Jorge Soto on 11/9/22.
//

import UIKit


class BaseTabBarController: UITabBarController {
    
    // 3 - maybe introduce our AppSearchController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if #available(iOS 13.0, *) {
            let tabBarApperance: UITabBarAppearance = UITabBarAppearance()
            tabBarApperance.configureWithDefaultBackground()
            if #available(iOS 15.0, *) {
                UITabBar.appearance().scrollEdgeAppearance = tabBarApperance
            }
        }
        
        viewControllers = [
            createNavController(viewController: UIViewController(), title: "Today", imageName: "newspaper.fill"),
            createNavController(viewController: UIViewController(), title: "Apps", imageName: "square.stack.3d.up.fill"),
            createNavController(viewController: AppSearchController(), title: "Search", imageName: "magnifyingglass"),
        ]
    }
    
    private func createNavController(viewController: UIViewController, title: String, imageName: String) -> UIViewController {
        let navController = UINavigationController(rootViewController: viewController)
        viewController.view.backgroundColor = .systemBackground
        viewController.navigationItem.title = title
        
        navController.navigationBar.prefersLargeTitles = true
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(systemName: imageName)
        return navController
    }
}
