//
//  MainModuleConfigurator.swift
//  JobSearch
//
//  Created by Игорь Пустыльник on 19.09.2024.
//

import Foundation

final class MainModuleConfigurator {
    
    func configure(_ coordinator: CoordinatorProtocol) -> (vc: JSTabBarController, output: MainModuleOutput) {
        let view = JSTabBarController()
        let presenter = MainPresenter()

        presenter.view = view
        presenter.coordinator = coordinator
//        view.output = presenter

        return (view, presenter)
    }
    
}
