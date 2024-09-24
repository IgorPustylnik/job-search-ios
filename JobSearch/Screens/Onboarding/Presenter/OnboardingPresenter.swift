//
//  OnboardingPresenter.swift
//  JobSearch
//
//  Created by Игорь Пустыльник on 24.08.2024.
//

import Foundation

final class OnboardingPresenter {
    
    // MARK: - Properties
    
    weak var view: OnboardingViewInput?
    var output: OnboardingModuleOutput?
    
    // MARK: - Private properties
    
    private var pagesModel: [OnboardingPageModel] = OnboardingPresenterModel().pages
    
    private var currentPage: Int? {
        didSet {
            guard let currentPage else { return }
            if currentPage == pagesModel.count {
//                output?.completeOnboarding()
                return
            }
            view?.setPage(index: currentPage, isLast: currentPage == pagesModel.count - 1)
        }
    }
}
    
// MARK: - View output

extension OnboardingPresenter: OnboardingViewOutput {
    func viewDidLoad() {
        view?.setupPagesModel(with: pagesModel)
        currentPage = 0
    }

    func pressedNext() {
        guard let currentPage = self.currentPage else { return }
        self.currentPage = currentPage + 1
    }

    func pressedSkip() {
//        output?.completeOnboarding()
    }
    
    func setPage(index: Int) {
        currentPage = index
    }
}

// MARK: Module input

extension OnboardingPresenter: OnboardingModuleInput {
}

extension OnboardingPresenter: OnboardingModuleOutput {    
}
