//
//  NotificationsViewController.swift
//  JobSearch
//
//  Created by igorpustylnik on 19/09/2024.
//  Copyright © 2024 IgorPustylnik. All rights reserved.
//

import UIKit

final class NotificationsViewController: UIViewController, NotificationsViewInput {

    // MARK: - Properties
    
    private var notificationsView = NotificationsView()

    var output: NotificationsViewOutput?

    // MARK: - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()
        output?.viewLoaded()
    }
    
    override func loadView() {
        view = notificationsView
    }

    // MARK: - NotificationsViewInput

    func setupInitialState() {

    }

}
