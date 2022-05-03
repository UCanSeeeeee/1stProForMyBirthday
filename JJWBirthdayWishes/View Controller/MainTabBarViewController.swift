//
//  MainTabBarViewController.swift
//  JJWBirthdayWishes
//
//  Created by 王杰 on 2022/5/3.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let vc1 = UINavigationController(rootViewController: DidViewController())
        let vc2 = UINavigationController(rootViewController: WishingViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "doc.plaintext")
        vc2.tabBarItem.image = UIImage(systemName: "gift")
        
        vc1.tabBarItem.title = "ing"
        vc2.tabBarItem.title = "wishing"
        
        tabBar.tintColor = .label
        setViewControllers([vc1,vc2], animated: true)
    }
}
