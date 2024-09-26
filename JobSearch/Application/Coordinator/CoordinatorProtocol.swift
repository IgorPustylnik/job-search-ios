//
//  CoordinatorProtocol.swift
//  JobSearch
//
//  Created by Игорь Пустыльник on 22.08.2024.
//

import UIKit

protocol CoordinatorProtocol: AnyObject {
    var childCoordinators: [CoordinatorProtocol] { get set }
    var navigationController: UINavigationController { get set }
    var finishDelegate: CoordinatorFinishDelegate? { get set }

    func start()
    func finish()
    
    func addChild(coordinator: CoordinatorProtocol)
    func removeChild(coordinator: CoordinatorProtocol)
}
