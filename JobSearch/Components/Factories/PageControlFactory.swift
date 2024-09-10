//
//  PageControlFactory.swift
//  JobSearch
//
//  Created by Игорь Пустыльник on 07.09.2024.
//

import AdvancedPageControl
import Foundation
import UIKit

final class PageControlFactory {

    static func createPageControl() -> AdvancedPageControlView {
        let pageControl = AdvancedPageControlView()

        let drawer = ExtendedDotDrawer(
            height: 8,
            width: 8,
            space: 8,
            indicatorColor: .Jscolors.blue1,
            dotsColor: .Jscolors.gray2,
            isBordered: false,
            borderWidth: 0.0,
            indicatorBorderColor: .clear,
            indicatorBorderWidth: 0.0
        )

        pageControl.drawer = drawer
        
        return pageControl
    }
}
