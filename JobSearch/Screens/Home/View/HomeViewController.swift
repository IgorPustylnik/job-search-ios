//
//  HomeViewController.swift
//  JobSearch
//
//  Created by Игорь Пустыльник on 18.08.2024.
//

import UIKit

class HomeViewController: UIViewController, HomeViewInput, ModuleTransitionable {
    
    // MARK: - Properties

    var output: HomeViewOutput?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
    }

}
