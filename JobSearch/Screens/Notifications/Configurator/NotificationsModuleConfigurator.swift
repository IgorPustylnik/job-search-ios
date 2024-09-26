//
//  NotificationsModuleConfigurator.swift
//  JobSearch
//
//  Created by igorpustylnik on 19/09/2024.
//  Copyright © 2024 IgorPustylnik. All rights reserved.
//

import UIKit

final class NotificationsModuleConfigurator {

    // MARK: - Internal methods

    func configure(_ coordinator: CoordinatorProtocol) -> (vc: NotificationsViewController, output: NotificationsModuleOutput) {
        let view = NotificationsViewController()
        let presenter = NotificationsPresenter()

        presenter.view = view
        presenter.coordinator = coordinator
        view.output = presenter

        return (view, presenter)
    }

}
