//
//  ViewController.swift
//  1000 Word
//
//  Created by Zeki Gökler on 22.12.2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: LearnedWordsViewController())
        let vc3 = UINavigationController(rootViewController: ToLearnedViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "house.fill")
        vc2.tabBarItem.image = UIImage(systemName: "figure.handball")
        vc3.tabBarItem.image = UIImage(systemName: "figure.fall")
        
        vc1.title = "1000 Words"
        vc2.title = "Learned Words"
        vc3.title = "To Learned Words"
        
        tabBar.tintColor = .label
        
        
        setViewControllers([vc2, vc1, vc3], animated: true)
    }


}

