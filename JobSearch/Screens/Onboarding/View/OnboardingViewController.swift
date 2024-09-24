//
//  OnboardingMainViewController.swift
//  JobSearch
//
//  Created by Игорь Пустыльник on 24.08.2024.
//

import Foundation
import UIKit
import AdvancedPageControl

final class OnboardingViewController: UIViewController {

    var output: OnboardingViewOutput?

    // MARK: - Private properties

    private var pagesModel: [OnboardingPageModel] = []
    
    private var pageControl: AdvancedPageControlView?
    
    private var onboardingView: OnboardingView?

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        onboardingView = OnboardingView()
        onboardingView?.delegate = self
        pageControl = onboardingView?.pageControl
        view = onboardingView
        loadViewIfNeeded()
        output?.viewDidLoad()
    }
}

extension OnboardingViewController: OnboardingViewInput {
    
    func setupPagesModel(with model: [OnboardingPageModel]) {
        pagesModel = model
        onboardingView?.setPagesModel(with: model)
    }
    
    func setPage(index: Int, isLast: Bool) {
        
        pageControl?.setPage(index)
        onboardingView?.scrollCollectionViewTo(itemAt: index)
        onboardingView?.setupState(isLastPage: isLast)
    }
}

extension OnboardingViewController: OnboardingViewDelegate {
    func pressedNext() {
        output?.pressedNext()
    }

    func pressedSkip() {
        output?.pressedSkip()
    }
    
    func scrolledToPage(index: Int) {
        output?.setPage(index: index)
    }
}
