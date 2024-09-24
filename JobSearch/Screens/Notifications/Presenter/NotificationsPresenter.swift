//
//  NotificationsPresenter.swift
//  JobSearch
//
//  Created by igorpustylnik on 19/09/2024.
//  Copyright © 2024 IgorPustylnik. All rights reserved.
//

final class NotificationsPresenter: NotificationsViewOutput, NotificationsModuleInput, NotificationsModuleOutput {

    // MARK: - NotificationsModuleOutput

    // MARK: - Properties

    weak var view: NotificationsViewInput?

    // MARK: - NotificationsViewOutput

    func viewLoaded() {
        view?.setupInitialState()
    }

    // MARK: - NotificationsModuleInput

}
