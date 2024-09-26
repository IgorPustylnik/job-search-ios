//
//  JSTabBar.swift
//  JobSearch
//
//  Created by Игорь Пустыльник on 18.08.2024.
//

import UIKit

class JSTabBar: UITabBar {
    private let indicatorLayer = CALayer()
    private let indicatorDiameter: CGFloat = 4

    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupTabBar()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupTabBar() {
        backgroundColor = .Jscolors.background
        indicatorLayer.backgroundColor = UIColor.Jscolors.blue1.cgColor
        indicatorLayer.cornerRadius = indicatorDiameter / 2
        layer.addSublayer(indicatorLayer)
        updateIndicatorPosition()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        updateIndicatorPosition()
    }

    private func updateIndicatorPosition() {
        guard let items = items else { return }
        let tabWidth = bounds.width / CGFloat(items.count)
        var selectedIndex = 0
        if let selectedItem {
            selectedIndex = items.firstIndex(of: selectedItem) ?? 0
        }

        let xPosition = CGFloat(selectedIndex) * tabWidth + (tabWidth - indicatorDiameter) / 2
        let iconFrame = subviews[selectedIndex + 1].frame
        let yPosition = iconFrame.maxY - 10

        indicatorLayer.frame = CGRect(x: xPosition,
                                      y: yPosition,
                                      width: indicatorDiameter,
                                      height: indicatorDiameter)
    }

    override var selectedItem: UITabBarItem? {
        didSet {
            UIView.animate(withDuration: 0.3) {
                self.updateIndicatorPosition()
            }
        }
    }
}
