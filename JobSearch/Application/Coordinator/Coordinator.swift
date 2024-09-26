//
//  Coordinator.swift
//  JobSearch
//
//  Created by Игорь Пустыльник on 26.09.2024.
//

import UIKit

class Coordinator: CoordinatorProtocol {
    
    var childCoordinators: [CoordinatorProtocol] = []
    var navigationController: UINavigationController
    var finishDelegate: CoordinatorFinishDelegate?
    
    init(navigationController: UINavigationController, finishDelegate: CoordinatorFinishDelegate? = nil) {
        self.navigationController = navigationController
        self.finishDelegate = finishDelegate
    }
    
    deinit {
        childCoordinators.forEach { $0.finishDelegate = nil }
        childCoordinators.removeAll()
    }
    
    func start() {
        print("Start coordinator")
    }
    
    func finish() {
        finishDelegate?.coordinatorDidFinish(childCoordinator: self)
    }
    
    func addChild(coordinator: CoordinatorProtocol) {
        childCoordinators.append(coordinator)
    }
    
    func removeChild(coordinator: CoordinatorProtocol) {
        childCoordinators = childCoordinators.filter { $0 !== coordinator }
    }
    
}
