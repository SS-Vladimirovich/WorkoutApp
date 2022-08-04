//
//  ProgressController.swift
//  WorkoutApp
//
//  Created by SERGEY SOKOLOV on 01.08.2022.
//

import UIKit

class ProgressController: BaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Workout Progress"
        navigationController?.tabBarItem.title = Resouces.Strings.TabBar.progress
        
        addNavBarButton(at: .left, with: "Export")
        addNavBarButton(at: .right, with: "Details")
    }
}
