//
//  OnboardingPresenterModel.swift
//  JobSearch
//
//  Created by Игорь Пустыльник on 24.08.2024.
//

import Foundation

struct OnboardingPresenterModel {
    let pages: [OnboardingPageModel] = [
        OnboardingPageModel(
            id: 0,
            title: Strings.Onboarding.page1.title,
            description: Strings.Onboarding.page1.description,
            image: .Images.Onboarding.page1
        ),
        OnboardingPageModel(
            id: 1,
            title: Strings.Onboarding.page2.title,
            description: Strings.Onboarding.page2.description,
            image: .Images.Onboarding.page2
        ),
        OnboardingPageModel(
            id: 2,
            title: Strings.Onboarding.page3.title,
            description: Strings.Onboarding.page3.description,
            image: .Images.Onboarding.page3
        ),
        OnboardingPageModel(
            id: 3,
            title: Strings.Onboarding.page4.title,
            description: Strings.Onboarding.page4.description,
            image: .Images.Onboarding.page4
        )
    ]

    enum Buttons {
        case next
        case skip
        case explore

        var title: String {
            switch self {
            case .next:
                "ONBOARDING_NEXT_BUTTON".localized()
            case .skip:
                "ONBOARDING_SKIP_BUTTON".localized()
            case .explore:
                "ONBOARDING_EXPLORE_BUTTON".localized()
            }
        }
    }
}
