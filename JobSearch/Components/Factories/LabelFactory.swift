//
//  LabelFactory.swift
//  JobSearch
//
//  Created by Игорь Пустыльник on 24.08.2024.
//

import Foundation
import UIKit

final class LabelFactory {

    // MARK: - Onboarding

    static func createTitleLabel(text: String = "") -> UILabel {
        let label = UILabel()
        label.text = text
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.Poppins.semiBold(size: 28)
        label.textColor = .Jscolors.mainText
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }

    static func createDescriptionLabel(text: String = "") -> UILabel {
        let label = UILabel()
        label.text = text
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.Poppins.regular(size: 15)
        label.textColor = .Jscolors.secondaryText
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }
}
