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
            .foregroundColor: Resouces.Colors.titleGray,
            .font: Resouces.Fonts.helvelticaRegular(with: 17)
        ]
        navigationBar.addBottomBorder(with: Resouces.Colors.separator, height: 1)
    }
}
