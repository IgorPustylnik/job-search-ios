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

    func configure(output: OnboardingModuleOutput? = nil) -> UIViewController {
        let view = OnboardingViewController()
        let presenter = OnboardingPresenter()
        let router = OnboardingRouter()

        presenter.view = view
        presenter.router = router
        presenter.output = output
        router.view = view
        view.output = presenter

        return view
    }

}
