//
//  OnboardingCollectionViewCell.swift
//  JobSearch
//
//  Created by Игорь Пустыльник on 05.09.2024.
//

import UIKit
import SnapKit

final class OnboardingCollectionViewCell: UICollectionViewCell {
    static let identifier = "OnboardingCollectionViewCell"
    
    // MARK: - UI Elements
    
    private lazy var imageView: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.contentMode = .scaleAspectFill

        $0.snp.makeConstraints { make in
            make.size.equalTo(284)
        }
        
        return $0
    }(UIImageView())

    private lazy var titleLabel = LabelFactory.createTitleLabel()

    private lazy var descriptionLabel = LabelFactory.createDescriptionLabel()
    
    public func configure(with pageModel: OnboardingPageModel) {
        imageView.image = pageModel.image
        titleLabel.text = pageModel.title
        descriptionLabel.text = pageModel.description
        setupLayout()
    }
    
    private func setupLayout() {
        addSubview(imageView)
        addSubview(titleLabel)
        addSubview(descriptionLabel)
        
        descriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(snp.bottom).offset(-102)
            make.height.equalTo(90)
            make.centerX.equalToSuperview()
            make.leading.equalToSuperview().offset(40)
            make.trailing.equalToSuperview().offset(-40)
        }

        titleLabel.snp.makeConstraints { make in
            make.bottom.equalTo(descriptionLabel.snp.top).offset(-16)
            make.centerX.equalToSuperview()
            make.leading.equalToSuperview().offset(40)
            make.trailing.equalToSuperview().offset(-40)
        }
        
        imageView.snp.makeConstraints { make in
            make.bottom.equalTo(titleLabel).offset(-20)
            make.centerX.equalToSuperview()
        }
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageView.image = nil
        titleLabel.text = nil
        descriptionLabel.text = nil
    }
}
