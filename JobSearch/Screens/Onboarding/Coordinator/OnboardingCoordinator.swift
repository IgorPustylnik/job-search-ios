//
//  OnboardingCoordinator.swift
//  JobSearch
//
//  Created by Игорь Пустыльник on 18.09.2024.
//

import Foundation
import UIKit

final class OnboardingCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let module = OnboardingModuleConfigurator().configure()
        let vc = module.vc
        navigationController.setViewControllers([vc], animated: false)
    }
}
