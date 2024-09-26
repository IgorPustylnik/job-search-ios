//
//  CoordinatorFinishDelegate.swift
//  JobSearch
//
//  Created by Игорь Пустыльник on 26.09.2024.
//

protocol CoordinatorFinishDelegate: AnyObject {
    
    func coordinatorDidFinish(childCoordinator: CoordinatorProtocol)
    
}
