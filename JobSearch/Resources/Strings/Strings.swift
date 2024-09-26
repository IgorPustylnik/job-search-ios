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
                return "ONBOARDING_PAGE1_TITLE".localized()
            case .page2:
                return "ONBOARDING_PAGE2_TITLE".localized()
            case .page3:
                return "ONBOARDING_PAGE3_TITLE".localized()
            case .page4:
                return "ONBOARDING_PAGE4_TITLE".localized()
            }
        }

        var description: String {
            switch self {
            case .page1:
                return "ONBOARDING_PAGE1_DESCRIPTION".localized()
            case .page2:
                return "ONBOARDING_PAGE2_DESCRIPTION".localized()
            case .page3:
                return "ONBOARDING_PAGE3_DESCRIPTION".localized()
            case .page4:
                return "ONBOARDING_PAGE4_DESCRIPTION".localized()
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
