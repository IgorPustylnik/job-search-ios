//
//  OnboardingCollectionView.swift
//  JobSearch
//
//  Created by Игорь Пустыльник on 05.09.2024.
//

import UIKit

final class OnboardingCollectionView: UICollectionView {

    private var pagesModel: [OnboardingPageModel]?

    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        super.init(frame: .zero, collectionViewLayout: layout)

        translatesAutoresizingMaskIntoConstraints = false
        isPagingEnabled = true
        showsVerticalScrollIndicator = false
        showsHorizontalScrollIndicator = false
        backgroundColor = .clear

        dataSource = self
        
        register(OnboardingCollectionViewCell.self, forCellWithReuseIdentifier: OnboardingCollectionViewCell.identifier)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setPagesModel(with pagesModel: [OnboardingPageModel]) {
        self.pagesModel = pagesModel
    }

    func setDelegate(delegate: UICollectionViewDelegateFlowLayout) {
        self.delegate = delegate
    }

    func scrollTo(itemAt index: Int) {
        guard let pagesModel else { return }
        guard index < pagesModel.count else { return }
        isPagingEnabled = false
        let indexPath = IndexPath(item: index, section: 0)
        scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        isPagingEnabled = true
    }
}

extension OnboardingCollectionView: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        pagesModel?.count ?? 0
    }

    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: OnboardingCollectionViewCell.identifier,
            for: indexPath
        ) as? OnboardingCollectionViewCell else { return UICollectionViewCell() }

        if let pagesModel = pagesModel, !pagesModel.isEmpty {
            cell.configure(with: pagesModel[indexPath.row])
        }
        return cell
    }
}
