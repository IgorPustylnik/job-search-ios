//
//  HomeViewController.swift
//  JobSearch
//
//  Created by Игорь Пустыльник on 18.08.2024.
//

import UIKit

class HomeViewController: UIViewController, HomeViewInput, ModuleTransitionable {
    
    // MARK: - Properties
    
    private var homeView = HomeView()
    
    var output: HomeViewOutput?
    
    // MARK: - Lifecycle
    
    override func loadView() {
        view = homeView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
