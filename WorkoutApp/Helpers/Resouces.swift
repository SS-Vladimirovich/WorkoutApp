//
//  Resouces.swift
//  WorkoutApp
//
//  Created by SERGEY SOKOLOV on 29.07.2022.
//

import UIKit

enum Resouces {
    enum Colors {
        static let active = UIColor(hexString: "#437BFE")
        static let inactive = UIColor(hexString: "#929DA5")
        
        static let separator = UIColor(hexString: "#E8ECEF")
        static let backgraund = UIColor(hexString: "#F8F9F9")
        static let secondary = UIColor(hexString: "#F0F3FF")
        
        static let titleGray = UIColor(hexString: "#545C77")
    }
    
    enum Strings {
        enum TabBar {
            static let overview = "Overview"
            static let session = "Session"
            static let progress = "Progress"
            static let settings = "Settings"
        }
    }
    
    enum Images {
        enum TabBar {
            static let overview = UIImage(named: "overview_tab")
            static let session = UIImage(named: "session_tab")
            static let progress = UIImage(named: "progress_tab")
            static let settings = UIImage(named: "settings_tab")
        }
        
        enum Common {
            static let downArrow = UIImage(named: "down_arrow")
        }
    }
    
    enum Fonts {
        static func helvelticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
    
    enum Overview {
        static let allWorkoutsButton = "All Workouts"
    }
}
