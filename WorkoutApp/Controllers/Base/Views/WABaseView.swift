//
//  WABaseView.swift
//  WorkoutApp
//
//  Created by SERGEY SOKOLOV on 04.08.2022.
//

import UIKit

class WABaseView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)

        setupViews()
        constaintViews()
        configureAppearance()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        setupViews()
        constaintViews()
        configureAppearance()
    }
}

@objc extension WABaseView {
    func setupViews() {}
    func constaintViews() {}
    
    func configureAppearance() {
        backgroundColor = .white
    }
}
