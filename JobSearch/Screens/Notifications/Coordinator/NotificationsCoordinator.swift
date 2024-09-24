//
//  NotificationsCoordinator.swift
//  JobSearch
//
//  Created by Игорь Пустыльник on 19.09.2024.
//

import Foundation
import UIKit

final class NotificationsCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let module = NotificationsModuleConfigurator().configure()
        let vc = module.vc
        
        navigationController.setViewControllers([vc], animated: false)
    }
    
}
