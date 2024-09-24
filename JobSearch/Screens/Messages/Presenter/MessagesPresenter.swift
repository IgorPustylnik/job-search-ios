//
//  MessagesPresenter.swift
//  JobSearch
//
//  Created by igorpustylnik on 12/09/2024.
//  Copyright © 2024 IgorPustylnik. All rights reserved.
//

final class MessagesPresenter: MessagesViewOutput, MessagesModuleInput, MessagesModuleOutput {

    // MARK: - MessagesModuleOutput

    // MARK: - Properties

    weak var view: MessagesViewInput?

    // MARK: - MessagesViewOutput

    func viewLoaded() {
        view?.setupInitialState()
    }

    // MARK: - MessagesModuleInput

}
