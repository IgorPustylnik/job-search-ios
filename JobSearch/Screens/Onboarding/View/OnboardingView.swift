//
//  OnboardingPageView.swift
//  JobSearch
//
//  Created by Игорь Пустыльник on 24.08.2024.
//

import AdvancedPageControl
import Foundation
import SnapKit
import UIKit

final class OnboardingView: UIView {

    weak var delegate: OnboardingViewDelegate?

    var pageControl = PageControlFactory.createPageControl()

    // MARK: - UI Elements

    private lazy var circleLayer: CALayer = {
        let diameter: CGFloat = 416
        $0.frame = CGRect(
            x: -abs(UIScreen.main.bounds.width - diameter) / 2,
            y: -274,
            width: diameter,
            height: diameter
        )
        $0.backgroundColor = UIColor.Jscolors.blue1.withAlphaComponent(0.2).cgColor
        $0.cornerRadius = diameter / 2
        return $0
    }(CALayer())

    private lazy var onboardingCollectionView = OnboardingCollectionView()

    private lazy var buttonsHStack: UIStackView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.axis = .horizontal
        $0.distribution = .fillEqually
        $0.alignment = .fill
        $0.spacing = 1
        return $0
    }(UIStackView())

    private lazy var nextButton = ButtonFactory.createFilledButton()

    private lazy var skipButton = ButtonFactory.createSecondaryButton()

    // MARK: - Initialization

    init() {
        super.init(frame: .zero)
        onboardingCollectionView.setDelegate(delegate: self)
        setupUI()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setPagesModel(with pagesModel: [OnboardingPageModel]) {
        onboardingCollectionView.setPagesModel(with: pagesModel)
        pageControl.numberOfPages = pagesModel.count
    }

    // MARK: - Private Methods

    private func setupUI() {
        backgroundColor = .Jscolors.background

        addSubviews()
        setupConstraints()

        nextButton.addTarget(self, action: #selector(pressedNext), for: .touchUpInside)
        skipButton.addTarget(self, action: #selector(pressedSkip), for: .touchUpInside)
    }

    private func addSubviews() {
        layer.addSublayer(circleLayer)
        [
            onboardingCollectionView,
            buttonsHStack,
            pageControl
        ]
        .forEach { addSubview($0) }
    }

    private func setupConstraints() {
        buttonsHStack.snp.makeConstraints { make in
            make.bottom.equalTo(safeAreaLayoutGuide).offset(-42)
            make.leading.equalToSuperview().offset(40)
            make.trailing.equalToSuperview().offset(-40)
            make.height.equalTo(56)
        }

        pageControl.snp.makeConstraints { make in
            make.bottom.equalTo(buttonsHStack.snp.top).offset(-72)
            make.height.equalTo(8)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview()
        }

        onboardingCollectionView.snp.makeConstraints { make in
            make.bottom.equalTo(pageControl.snp.top).offset(-10)
            make.left.right.top.equalToSuperview()
        }
    }

    func setupState(isLastPage: Bool) {
        
        UIView.transition(with: buttonsHStack, 
                          duration: 0.2,
                          options: .transitionCrossDissolve,
                          animations: {
            
            self.buttonsHStack.arrangedSubviews.forEach {
                self.buttonsHStack.removeArrangedSubview($0)
                $0.removeFromSuperview()
            }
            
            if isLastPage {
                self.buttonsHStack.addArrangedSubview(self.nextButton)
                self.nextButton.configuration?.title = OnboardingPresenterModel.Buttons.explore.title
            } else {
                self.buttonsHStack.addArrangedSubview(self.skipButton)
                self.buttonsHStack.addArrangedSubview(self.nextButton)
                self.nextButton.configuration?.title = OnboardingPresenterModel.Buttons.next.title
                self.buttonsHStack.insertArrangedSubview(self.skipButton, at: 0)
                self.skipButton.configuration?.title = OnboardingPresenterModel.Buttons.skip.title
            }
        }
        )
    }

    func scrollCollectionViewTo(itemAt index: Int) {
        onboardingCollectionView.scrollTo(itemAt: index)
    }

    // MARK: - Selectors

    @objc private func pressedNext() {
        delegate?.pressedNext()
    }

    @objc private func pressedSkip() {
        delegate?.pressedSkip()
    }
}

extension OnboardingView: UICollectionViewDelegateFlowLayout {
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAt indexPath: IndexPath
    ) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offSet = scrollView.contentOffset.x
        let width = scrollView.frame.width
        guard width > 0 else { return }
        pageControl.setPageOffset(offSet / width)
    }

    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let page = Int(scrollView.contentOffset.x / scrollView.frame.size.width)
        delegate?.scrolledToPage(index: page)
    }
}
