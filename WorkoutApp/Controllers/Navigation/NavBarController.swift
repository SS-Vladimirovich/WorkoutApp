//
//  NavBarController.swift
//  WorkoutApp
//
//  Created by SERGEY SOKOLOV on 31.07.2022.
//

import UIKit

final class NavBarController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        configureAppearance()
    }

    private func configureAppearance() {
        view.backgroundColor = .white
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: R.Colors.titleGray,
            .font: R.Fonts.helvelticaRegular(with: 17)
        ]

        navigationBar.addBottomBorder(with: R.Colors.separator, height: 1)
    }
}
