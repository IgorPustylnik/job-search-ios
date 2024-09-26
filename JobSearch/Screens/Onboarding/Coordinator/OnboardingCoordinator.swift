//
//  OnboardingCoordinator.swift
//  JobSearch
//
//  Created by Игорь Пустыльник on 18.09.2024.
//

import Foundation
import UIKit

final class OnboardingCoordinator: Coordinator {
    
    override func start() {
        let module = OnboardingModuleConfigurator().configure(self)
        let vc = module.vc
        navigationController.setViewControllers([vc], animated: false)
    }
    
}
