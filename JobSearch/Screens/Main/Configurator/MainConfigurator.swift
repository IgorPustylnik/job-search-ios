//
//  MainConfigurator.swift
//  JobSearch
//
//  Created by Игорь Пустыльник on 19.09.2024.
//

import Foundation

final class MainConfigurator {
    
    func configure() -> (vc: JSTabBarController, output: MainModuleOutput) {
        let view = JSTabBarController()
        let presenter = MainPresenter()

        presenter.view = view
//        view.output = presenter

        return (view, presenter)
    }
    
}
