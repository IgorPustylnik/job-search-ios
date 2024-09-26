//
//  MainCoordinator.swift
//  JobSearch
//
//  Created by Игорь Пустыльник on 18.09.2024.
//

import Foundation
import UIKit

final class MainCoordinator: Coordinator {

    override init(navigationController: UINavigationController, finishDelegate: CoordinatorFinishDelegate? = nil) {
        super.init(navigationController: navigationController, finishDelegate: finishDelegate)
        navigationController.isNavigationBarHidden = true
    }

    override func start() {
        let module = MainModuleConfigurator().configure(self)
        let tabBarController = module.vc

        let homeNavigationController = UINavigationController()
        let messagesNavigationController = UINavigationController()
        let favoritesNavigationController = UINavigationController()
        let notificationsNavigationController = UINavigationController()

        homeNavigationController.tabBarItem.tag = 0
        messagesNavigationController.tabBarItem.tag = 1
        favoritesNavigationController.tabBarItem.tag = 2
        notificationsNavigationController.tabBarItem.tag = 3

        homeNavigationController.tabBarItem = UITabBarItem(title: nil,
                                                           image: .Icons.TabBar.home.withTintColor(.Jscolors.gray1, renderingMode: .alwaysOriginal),
                                                           selectedImage: .Icons.TabBar.home.withTintColor(.Jscolors.blue1, renderingMode: .alwaysOriginal))
        messagesNavigationController.tabBarItem = UITabBarItem(title: nil,
                                                               image: .Icons.TabBar.messages.withTintColor(.Jscolors.gray1, renderingMode: .alwaysOriginal),
                                                               selectedImage: .Icons.TabBar.messages.withTintColor(.Jscolors.blue1, renderingMode: .alwaysOriginal))
        favoritesNavigationController.tabBarItem = UITabBarItem(title: nil,
                                                                image: .Icons.TabBar.favorites.withTintColor(.Jscolors.gray1, renderingMode: .alwaysOriginal),
                                                                selectedImage: .Icons.TabBar.favorites.withTintColor(.Jscolors.blue1, renderingMode: .alwaysOriginal))
        notificationsNavigationController.tabBarItem = UITabBarItem(title: nil,
                                                                    image: .Icons.TabBar.notifications.withTintColor(.Jscolors.gray1, renderingMode: .alwaysOriginal),
                                                                    selectedImage: .Icons.TabBar.notifications.withTintColor(.Jscolors.blue1, renderingMode: .alwaysOriginal))

        let homeCoordinator = HomeCoordinator(navigationController: homeNavigationController)
        let messagesCoordinator = MessagesCoordinator(navigationController: messagesNavigationController)
        let favoritesCoordinator = FavoritesCoordinator(navigationController: favoritesNavigationController)
        let notificationsCoordinator = NotificationsCoordinator(navigationController: notificationsNavigationController)

        homeCoordinator.start()
        messagesCoordinator.start()
        favoritesCoordinator.start()
        notificationsCoordinator.start()

        let coordinators: [CoordinatorProtocol] = [
            homeCoordinator, 
            messagesCoordinator,
            favoritesCoordinator, 
            notificationsCoordinator
        ]
        coordinators.forEach { self.addChild(coordinator: $0) }

        tabBarController.setControllers([
            homeNavigationController,
            messagesNavigationController,
            favoritesNavigationController,
            notificationsNavigationController
        ])
        
        navigationController.setViewControllers([tabBarController], animated: false)
    }
}
