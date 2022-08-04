//
//  OverviewController.swift
//  WorkoutApp
//
//  Created by SERGEY SOKOLOV on 29.07.2022.
//

import UIKit

class OverviewController: BaseController {
    
    let navBar = OverviewNavBar()
}

extension OverviewController {
    
    override func addViews() {
        super.addViews()
        
        view.addSubview(navBar)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    override func configure() {
        super.configure()
        
        navigationController?.navigationBar.isHidden = true
        navBar.translatesAutoresizingMaskIntoConstraints = false
    }
}

