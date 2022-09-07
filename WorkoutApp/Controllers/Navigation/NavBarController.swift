//
//  NavBarController.swift
//  WorkoutApp
//
//  Created by SERGEY SOKOLOV on 31.07.2022.
//

import UIKit

class NavBarController: UINavigationController {
    
    var rootViewController: UIViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    func configure() {
        view.backgroundColor = .white
        navigationBar.isTranslucent = true
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: R.Colors.titleGray,
            .font: R.Fonts.helvelticaRegular(with: 17)
        ]
        navigationBar.addBottomBorder(with: R.Colors.separator, height: 1)
    }
}
