//
//  JSCoordinator.swift
//  JobSearch
//
//  Created by Игорь Пустыльник on 22.08.2024.
//

import UIKit

final class JSCoordinator: Coordinator {

    var childCoordinators: [Coordinator] = []

    var navigationController: UINavigationController

    var window: UIWindow?

    init(navigationController: UINavigationController, window: UIWindow?) {
        self.navigationController = navigationController
        self.window = window
    }

    func start() {
        configureWindow()
        // TODO: - check if onboarding is complete
        true ? showMainFlow() : showOnboardingFlow()
    }

    private func configureWindow() {
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }

    private func showMainFlow() {
        let vc = JSTabBarController()
        navigationController.setViewControllers([vc], animated: false)
    }

    private func showOnboardingFlow() {
    }
}
