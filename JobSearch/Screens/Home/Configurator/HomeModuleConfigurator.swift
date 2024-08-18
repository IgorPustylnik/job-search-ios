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

    func configure(output: HomeModuleOutput? = nil) -> UIViewController {
        let view = HomeViewController()
        let presenter = HomePresenter()
        let router = HomeRouter()

        presenter.view = view
        presenter.router = router
        presenter.output = output
        router.view = view
        view.output = presenter

        return view
    }

}
