//
//  OnboardingModuleConfigurator.swift
//  JobSearch
//
//  Created by Игорь Пустыльник on 24.08.2024.
//

import Foundation
import UIKit

final class OnboardingModuleConfigurator {

    // MARK: - Internal methods

    func configure(_ coordinator: CoordinatorProtocol) -> (vc: OnboardingViewController, output: OnboardingModuleOutput) {
        let view = OnboardingViewController()
        let presenter = OnboardingPresenter()

        presenter.view = view
        presenter.coordinator = coordinator
        view.output = presenter

        return (view, presenter)
    }

}
