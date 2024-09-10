//
//  ButtonFactory.swift
//  JobSearch
//
//  Created by Игорь Пустыльник on 24.08.2024.
//

import Foundation
import UIKit

final class ButtonFactory {

    static func createFilledButton(title: String = "") -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        var config = UIButton.Configuration.filled()
        button.layer.cornerRadius = 5
        config.baseBackgroundColor = .Jscolors.blue1
        config.baseForegroundColor = .white
        config.title = title
        button.configuration = config
        button.titleLabel?.font = .Poppins.medium(size: 16)
        return button
    }

    static func createBorderedButton(title: String = "") -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        var config = UIButton.Configuration.borderedProminent()
        button.layer.cornerRadius = 5
        config.baseBackgroundColor = .Jscolors.blue1
        config.baseForegroundColor = .white
        config.title = title
        button.configuration = config
        button.titleLabel?.font = .Poppins.medium(size: 16)
        return button
    }

    static func createSecondaryButton(title: String = "") -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        var config = UIButton.Configuration.borderless()
        config.baseForegroundColor = .Jscolors.secondaryText
        config.title = title
        button.configuration = config
        button.titleLabel?.font = .Poppins.medium(size: 16)
        return button
    }
}
