//
//  HomePresenter.swift
//  JobSearch
//
//  Created by Игорь Пустыльник on 18.08.2024.
//

import Foundation

final class HomePresenter: HomeViewOutput {
    
    // MARK: - Properties

    weak var view: HomeViewInput?
    var output: HomeModuleOutput?

}

extension HomePresenter: HomeModuleInput {
}

extension HomePresenter: HomeModuleOutput {
}
