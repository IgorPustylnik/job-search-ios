//
//  MessagesViewController.swift
//  JobSearch
//
//  Created by igorpustylnik on 12/09/2024.
//  Copyright © 2024 IgorPustylnik. All rights reserved.
//

import UIKit

final class MessagesViewController: UIViewController {

    // MARK: - Properties
    
    private var messagesView = MessagesView()

    var output: MessagesViewOutput?

    // MARK: - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()
        output?.viewLoaded()
    }
    
    override func loadView() {
        view = messagesView
    }

}

extension MessagesViewController: MessagesViewInput {
    
    func setupInitialState() {
        
    }
    
}
