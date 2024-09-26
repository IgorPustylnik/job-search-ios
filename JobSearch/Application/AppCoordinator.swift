//
//  JSCoordinator.swift
//  JobSearch
//
//  Created by Игорь Пустыльник on 22.08.2024.
//

import UIKit

final class AppCoordinator: Coordinator {
    var window: UIWindow?

    init(navigationController: UINavigationController, window: UIWindow?, finishDelegate: CoordinatorFinishDelegate? = nil) {
        super.init(navigationController: navigationController, finishDelegate: finishDelegate)
        self.window = window
    }

    override func start() {
        configureWindow()
//        if UserDefaults.standard.bool(forKey: "onboardingComplete") {
//            showMainFlow(animated: false)
//        } else {
        showOnboardingFlow()
//        }
    }

    private func configureWindow() {
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }

    private func showMainFlow() {
        let mainCoordinator = MainCoordinator(navigationController: navigationController, finishDelegate: self)
        addChild(coordinator: mainCoordinator)
        mainCoordinator.start()
    }

    private func showOnboardingFlow() {
        let onboardingCoordinator = OnboardingCoordinator(navigationController: navigationController, finishDelegate: self)
        addChild(coordinator: onboardingCoordinator)
        onboardingCoordinator.start()
    }
}

extension AppCoordinator: CoordinatorFinishDelegate {
    
    func coordinatorDidFinish(childCoordinator: CoordinatorProtocol) {
        removeChild(coordinator: childCoordinator)
        if childCoordinator is OnboardingCoordinator {
            showMainFlow()
        }
    }
    
}
