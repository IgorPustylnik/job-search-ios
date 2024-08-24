//
//  Fonts.swift
//  JobSearch
//
//  Created by Игорь Пустыльник on 08.08.2024.
//

import Foundation
import UIKit

extension UIFont {
    // MARK: - Fonts names

    //

    // MARK: - Poppins

    private enum PoppinsType {
        static let regular = "Poppins-Regular"
        static let medium = "Poppins-Medium"
        static let semiBold = "Poppins-SemiBold"
        static let bold = "Poppins-Bold"
    }

    // MARK: - UIFont instances

    //

    // MARK: - Poppins

    enum Poppins {
        static func regular(size: CGFloat) -> UIFont {
            guard let font = UIFont(name: PoppinsType.regular, size: size) else {
                print("Font \(PoppinsType.regular) not found")
                return .systemFont(ofSize: size)
            }
            return font
        }

        static func medium(size: CGFloat) -> UIFont {
            guard let font = UIFont(name: PoppinsType.medium, size: size) else {
                print("Font \(PoppinsType.medium) not found")
                return .systemFont(ofSize: size)
            }
            return font
        }

        static func semiBold(size: CGFloat) -> UIFont {
            guard let font = UIFont(name: PoppinsType.semiBold, size: size) else {
                print("Font \(PoppinsType.semiBold) not found")
                return .systemFont(ofSize: size)
            }
            return font
        }

        static func bold(size: CGFloat) -> UIFont {
            guard let font = UIFont(name: PoppinsType.bold, size: size) else {
                print("Font \(PoppinsType.bold) not found")
                return .systemFont(ofSize: size)
            }
            return font
        }
    }
}
