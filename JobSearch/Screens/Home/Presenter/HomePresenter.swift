//
//  HomePresenter.swift
//  JobSearch
//
//  Created by Игорь Пустыльник on 18.08.2024.
//

import Foundation

final class HomePresenter: HomeViewOutput, HomeModuleInput {
    
    // MARK: - Properties

    weak var view: HomeViewInput?
    var router: HomeRouterInput?
    var output: HomeModuleOutput?

}
