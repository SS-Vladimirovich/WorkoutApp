//
//  SessionController.swift
//  WorkoutApp
//
//  Created by SERGEY SOKOLOV on 01.08.2022.
//

import UIKit

class SessionController: BaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "High Intensity Cardio"
        navigationController?.tabBarItem.title = Resouces.Strings.TabBar.session

        addNavBarButton(at: .left, with: "Pause")
        addNavBarButton(at: .right, with: "Finish")
    }
}
