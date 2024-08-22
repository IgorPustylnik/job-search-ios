//
//  JSTabBarController.swift
//  JobSearch
//
//  Created by Игорь Пустыльник on 18.08.2024.
//

import UIKit

class JSTabBarController: UITabBarController, UITabBarControllerDelegate {
    private var buttonContainer: UIView?

    override func viewDidLoad() {
        super.viewDidLoad()

        delegate = self
        let tabBar = JSTabBar()
        setValue(tabBar, forKey: "tabBar")

        setupTabBar()
        setupViewControllers()
    }

    private func setupTabBar() {
        tabBar.shadowImage = UIImage()
        tabBar.backgroundImage = UIImage()
    }

    private func setupViewControllers() {
        viewControllers = JSTabBarModel().controllers
    }
}
