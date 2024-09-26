//
//  MessagesModuleConfigurator.swift
//  JobSearch
//
//  Created by igorpustylnik on 12/09/2024.
//  Copyright © 2024 IgorPustylnik. All rights reserved.
//

import UIKit

final class MessagesModuleConfigurator {

    // MARK: - Internal methods

    func configure(_ coordinator: CoordinatorProtocol) -> (vc: MessagesViewController, output: MessagesModuleOutput) {
        let view = MessagesViewController()
        let presenter = MessagesPresenter()

        presenter.view = view
        presenter.coordinator = coordinator
        view.output = presenter

        return (view, presenter)
    }

}

