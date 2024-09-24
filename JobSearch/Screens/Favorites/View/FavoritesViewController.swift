//
//  FavoritesViewController.swift
//  JobSearch
//
//  Created by igorpustylnik on 19/09/2024.
//  Copyright © 2024 IgorPustylnik. All rights reserved.
//

import UIKit

final class FavoritesViewController: UIViewController {
    
    // MARK: - Properties
    
    private var favoritesView = FavoritesView()
    
    var output: FavoritesViewOutput?
    
    // MARK: - UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output?.viewLoaded()
    }
    
    override func loadView() {
        view = favoritesView
    }
    
}

extension FavoritesViewController: FavoritesViewInput {
    
    func setupInitialState() {
        
    }
    
}
