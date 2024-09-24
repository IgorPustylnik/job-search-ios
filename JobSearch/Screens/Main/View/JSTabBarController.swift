//
//  JSTabBarController.swift
//  JobSearch
//
//  Created by Игорь Пустыльник on 18.08.2024.
//

import UIKit

class JSTabBarController: UITabBarController, UITabBarControllerDelegate {
    
    private let jsTabBar = JSTabBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        setupTabBar()
    }

    private func setupTabBar() {
        setValue(jsTabBar, forKey: "tabBar")
        tabBar.shadowImage = UIImage()
        tabBar.backgroundImage = UIImage()
    }
}

extension JSTabBarController: MainViewInput {
    
    func setControllers(_ controllers: [UIViewController]) {
        setViewControllers(controllers, animated: false)
    }
    
}
