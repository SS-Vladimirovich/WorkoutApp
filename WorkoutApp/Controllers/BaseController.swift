//
//  BaseController.swift
//  WorkoutApp
//
//  Created by SERGEY SOKOLOV on 31.07.2022.
//

import UIKit

class BaseController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
}

@objc extension BaseController {
    
    func addViews() { }
    func layoutViews() { }
    func configure() {
        view.backgroundColor = Resouces.Colors.backgraund
    }
}
