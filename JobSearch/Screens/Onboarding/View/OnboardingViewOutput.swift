//
//  OnboardingViewOutput.swift
//  JobSearch
//
//  Created by Игорь Пустыльник on 25.08.2024.
//

import Foundation

protocol OnboardingViewOutput: AnyObject {
    func viewDidLoad()
    func pressedNext()
    func pressedSkip()
    func setPage(index: Int)
}
