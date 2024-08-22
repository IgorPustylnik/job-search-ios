//
//  Coordinator.swift
//  JobSearch
//
//  Created by Игорь Пустыльник on 22.08.2024.
//

import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }

    func start()
}
