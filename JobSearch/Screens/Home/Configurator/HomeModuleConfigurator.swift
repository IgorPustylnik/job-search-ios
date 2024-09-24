//
//  HomeModuleConfigurator.swift
//  JobSearch
//
//  Created by Игорь Пустыльник on 18.08.2024.
//

import Foundation
import UIKit
 
final class HomeModuleConfigurator {

    // MARK: - Internal methods

    func configure() -> (vc: HomeViewController, output: HomeModuleOutput) {
        let view = HomeViewController()
        let presenter = HomePresenter()

        presenter.view = view
        view.output = presenter

        return (view, presenter)
    }

}
