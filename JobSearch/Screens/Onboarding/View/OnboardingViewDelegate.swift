//
//  OnboardingPageViewDelegate.swift
//  JobSearch
//
//  Created by Игорь Пустыльник on 24.08.2024.
//

import Foundation

protocol OnboardingViewDelegate: AnyObject {
    func pressedNext()
    func pressedSkip()
    func scrolledToPage(index: Int)
}
