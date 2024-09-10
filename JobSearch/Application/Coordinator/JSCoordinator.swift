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

    private func showMainFlow(animated: Bool) {
        let vc = JSTabBarController()

        guard let window else { return }
        UIView.transition(with: window,
                          duration: 0.5,
                          options: .transitionCrossDissolve,
                          animations: {
                              self.navigationController.setViewControllers([vc], animated: false)
                          },
                          completion: nil)
    }

    private func showOnboardingFlow() {
        let vc = OnboardingModuleConfigurator().configure(output: self)
        navigationController.setViewControllers([vc], animated: false)
    }
}

extension JSCoordinator: OnboardingModuleOutput {

    func completeOnboarding() {
        print("complete")
        UserDefaults.standard.setValue(true, forKey: "onboardingComplete")
        showMainFlow(animated: true)
    }

}
