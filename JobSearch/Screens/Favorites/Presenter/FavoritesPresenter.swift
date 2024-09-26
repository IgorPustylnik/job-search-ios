//
//  FavoritesPresenter.swift
//  JobSearch
//
//  Created by igorpustylnik on 19/09/2024.
//  Copyright © 2024 IgorPustylnik. All rights reserved.
//

final class FavoritesPresenter: FavoritesViewOutput, FavoritesModuleInput, FavoritesModuleOutput {

    // MARK: - FavoritesModuleOutput

    // MARK: - Properties

    weak var view: FavoritesViewInput?
    var coordinator: CoordinatorProtocol?

    // MARK: - FavoritesViewOutput

    func viewLoaded() {
        view?.setupInitialState()
    }

    // MARK: - FavoritesModuleInput

}
