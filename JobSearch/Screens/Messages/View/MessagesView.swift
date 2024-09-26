//
//  MessagesView.swift
//  JobSearch
//
//  Created by Игорь Пустыльник on 12.09.2024.
//

import Foundation
import UIKit

final class MessagesView: UIView {
    
    // MARK: - UI Elements
    
    init() {
        super.init(frame: .zero)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        backgroundColor = .red
    }
    
}
