//
//  HomeView.swift
//  JobSearch
//
//  Created by Игорь Пустыльник on 22.08.2024.
//

import Foundation
import SnapKit
import UIKit

final class HomeView: UIView {

    // MARK: - UI Components

    private lazy var testLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Test"
        $0.font = .systemFont(ofSize: 20)
        $0.textColor = .black
        return $0
    }(UILabel())

    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupUI()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func addSubviews() {
        addSubview(testLabel)
    }

    private func setupUI() {
        backgroundColor = .Jscolors.background
        addSubviews()

        testLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
}
