//
//  FavoritesCoordinator.swift
//  JobSearch
//
//  Created by Игорь Пустыльник on 19.09.2024.
//

import Foundation
import UIKit

final class FavoritesCoordinator: Coordinator {
    
    override func start() {
        let module = FavoritesModuleConfigurator().configure(self)
        let vc = module.vc
        
        navigationController.setViewControllers([vc], animated: false)
    }
    
}
