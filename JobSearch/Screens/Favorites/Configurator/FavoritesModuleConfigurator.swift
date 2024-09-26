//
//  FavoritesModuleConfigurator.swift
//  JobSearch
//
//  Created by igorpustylnik on 19/09/2024.
//  Copyright © 2024 IgorPustylnik. All rights reserved.
//

import UIKit

final class FavoritesModuleConfigurator {

    // MARK: - Internal methods

    func configure(_ coordinator: CoordinatorProtocol) -> (vc: FavoritesViewController, output: FavoritesModuleOutput) {
        let view = FavoritesViewController()
        let presenter = FavoritesPresenter()

        presenter.view = view
        presenter.coordinator = coordinator
        view.output = presenter

        return (view, presenter)
    }

}
