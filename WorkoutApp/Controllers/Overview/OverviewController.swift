//
//  OverviewController.swift
//  WorkoutApp
//
//  Created by SERGEY SOKOLOV on 29.07.2022.
//

import UIKit

class OverviewController: BaseController {
    
    let  allWorkoutsButton = SecondaryButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Overview"
    }
}

extension OverviewController {
    
    override func addViews() {
        super.addViews()
        
        view.addSubview(allWorkoutsButton)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            allWorkoutsButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            allWorkoutsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            allWorkoutsButton.heightAnchor.constraint(equalToConstant: 28),
            allWorkoutsButton.widthAnchor.constraint(equalToConstant: 130)
        ])
    }
    
    override func configure() {
        super.configure()
        
        allWorkoutsButton.translatesAutoresizingMaskIntoConstraints = false
        allWorkoutsButton.setTitle(Resouces.Overview.allWorkoutsButton)
        allWorkoutsButton.addTarget(self,
                                    action: #selector(allWorkoutsButtonAction),
                                    for: .touchUpInside)
        
    }
}

@objc extension OverviewController {
    func allWorkoutsButtonAction() {
        print("Taped")
    }
}

