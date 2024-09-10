import Foundation

struct Strings {
    // MARK: - Onboarding

    enum Onboarding {
        case page1
        case page2
        case page3
        case page4

        var title: String {
            switch self {
            case .page1:
                return "Search your job".localized()
            case .page2:
                return "Browse jobs list".localized()
            case .page3:
                return "Apply to best jobs".localized()
            case .page4:
                return "Make your career".localized()
            }
        }

        var description: String {
            switch self {
            case .page1:
                return "Figure out your top five priorities whether it is company culture, salary.".localized()
            case .page2:
                return "Our job list include several industries, so you can find the best job for you.".localized()
            case .page3:
                return "You can apply to your desirable jobs very quickly and easily with ease.".localized()
            case .page4:
                return "We help you find your dream job based on your skillset, location, demand.".localized()
            }
        }
    }
}

// MARK: - Localization String extension

extension String {
    func localized() -> String {
        NSLocalizedString(self, tableName: "Localizable", bundle: .main, value: self, comment: self)
    }
}
