//
//  OnboardingViewInput.swift
//  JobSearch
//
//  Created by Игорь Пустыльник on 25.08.2024.
//

import Foundation

protocol OnboardingViewInput: AnyObject {

    func setupPagesModel(with model: [OnboardingPageModel])
    func setPage(index: Int, isLast: Bool)

}
