//
//  TabBarControllers.swift
//  GaleryApp
//
//  Created by Bakdaulet Maulenov on 02.12.2023.
//

import UIKit

class TabBarControllers:  UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        edgesForExtendedLayout = [.all]
        self.tabBar.backgroundColor = .systemGray5
        view.backgroundColor = .white
            
           let firstViewController = UINavigationController(rootViewController: TabBarViews(title: "Library"))
           let secondViewController = UINavigationController(rootViewController: TabBarViews(title: "For You"))
           let thirdViewController = UINavigationController(rootViewController: ViewController())
           let fourthViewController = UINavigationController(rootViewController: AlbumProfile())

           firstViewController.tabBarItem = UITabBarItem(title: "Library", image: UIImage(systemName: "photo.artframe"), tag: 0)
           secondViewController.tabBarItem = UITabBarItem(title: "For You", image: UIImage(systemName: "heart"), tag: 1)
           thirdViewController.tabBarItem = UITabBarItem(title: "Albums", image: UIImage(systemName: "folder.fill"), tag: 2)
           fourthViewController.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass.circle.fill"), tag: 3)

           viewControllers = [firstViewController, secondViewController, thirdViewController, fourthViewController]
       }
}
