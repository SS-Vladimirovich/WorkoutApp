//
//  TabBarController.swift
//  WorkoutApp
//
//  Created by SERGEY SOKOLOV on 29.07.2022.
//

import UIKit

enum Tabs: Int {
    case overview
    case session
    case progress
    case settings
}

class TabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        tabBar.tintColor = Resouces.Colors.active
        tabBar.barTintColor = Resouces.Colors.inactive
        tabBar.backgroundColor = .white
        
        tabBar.layer.borderColor = Resouces.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let overviewController = OverviewController()
        let sessionController = OverviewController()
        let progressController = OverviewController()
        let settingsController = OverviewController()
        
        let overviewNavigation = UINavigationController(rootViewController: overviewController)
        let sessionNavigation = NavBarController(rootViewController: sessionController)
        let progressNavigation = NavBarController(rootViewController: progressController)
        let settingsNavigation = NavBarController(rootViewController: settingsController)
        
        overviewController.tabBarItem = UITabBarItem(title: Resouces.Strings.TabBar.overview,
                                                     image: Resouces.Images.TabBar.overview,
                                                     tag: Tabs.overview.rawValue)
        sessionController.tabBarItem = UITabBarItem(title: Resouces.Strings.TabBar.session,
                                                    image: Resouces.Images.TabBar.session,
                                                     tag: Tabs.session.rawValue)
        progressController.tabBarItem = UITabBarItem(title: Resouces.Strings.TabBar.progress,
                                                     image: Resouces.Images.TabBar.progress,
                                                     tag: Tabs.progress.rawValue)
        settingsController.tabBarItem = UITabBarItem(title: Resouces.Strings.TabBar.settings,
                                                     image: Resouces.Images.TabBar.settings,
                                                     tag: Tabs.settings.rawValue)
        
        setViewControllers([
            overviewNavigation,
            sessionNavigation,
            progressNavigation,
            settingsNavigation
        ], animated: false)
    }
}
